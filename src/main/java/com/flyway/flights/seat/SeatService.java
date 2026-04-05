package com.flyway.flights.seat;

import com.flyway.common.ApiResponse;
import com.flyway.exception.CustomException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class SeatService {

    private final WebClient duffelWebClient;

    public SeatService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<SeatResponse> getSeatMap(String offerId) {

        try {
            SupplierSeatResponse supplierResponse = duffelWebClient.get()
                    .uri("/air/seat_maps?offer_id=" + offerId)
                    .retrieve()
                    .bodyToMono(SupplierSeatResponse.class)
                    .block();

            SeatResponse response = mapToInternalResponse(supplierResponse);
            log.info("Seat map fetched successfully: {}", response);
            return ApiResponse.<SeatResponse>builder()
                    .success(true)
                    .message("Seat map fetched successfully")
                    .data(response)
                    .build();

        } catch (Exception ex) {
            log.error("Duffel Seat Map API failed", ex);
            throw new CustomException("Failed to fetch seat map", HttpStatus.BAD_GATEWAY);
        }
    }

    private SeatResponse mapToInternalResponse(SupplierSeatResponse supplier) {

        if (supplier == null || supplier.getData() == null || supplier.getData().isEmpty()) {
            return new SeatResponse();
        }

        SupplierSeatResponse.SeatMapData data = supplier.getData().get(0);

        SeatResponse response = new SeatResponse();
        response.setSeatMapId(data.getId());
        response.setSegmentId(data.getSegmentId());
        response.setSliceId(data.getSliceId());

        List<SeatResponse.Cabin> cabins = new ArrayList<>();

        for (SupplierSeatResponse.Cabin cabin : data.getCabins()) {

            SeatResponse.Cabin cabinRes = new SeatResponse.Cabin();
            cabinRes.setCabinClass(cabin.getCabinClass());
            cabinRes.setDeck(cabin.getDeck());
            cabinRes.setAisles(cabin.getAisles());

            if (cabin.getWings() != null) {
                cabinRes.setWingStart(cabin.getWings().getFirstRowIndex());
                cabinRes.setWingEnd(cabin.getWings().getLastRowIndex());
            }

            List<SeatResponse.Row> rows = new ArrayList<>();
            int rowIndex = 1;

            for (SupplierSeatResponse.Row row : cabin.getRows()) {

                SeatResponse.Row rowRes = new SeatResponse.Row();
                rowRes.setRowNumber(rowIndex++);

                List<SeatResponse.Seat> seats = new ArrayList<>();

                for (SupplierSeatResponse.Section section : row.getSections()) {
                    for (SupplierSeatResponse.Element element : section.getElements()) {

                        SeatResponse.Seat seat = new SeatResponse.Seat();
                        seat.setType(element.getType());

                        if ("seat".equals(element.getType())) {
                            seat.setSeatNumber(element.getDesignator());
                        }

                        List<SeatResponse.Service> services = new ArrayList<>();

                        if (element.getAvailableServices() != null) {
                            for (SupplierSeatResponse.Service svc : element.getAvailableServices()) {

                                SeatResponse.Service s = new SeatResponse.Service();
                                s.setServiceId(svc.getId());
                                s.setPassengerId(svc.getPassengerId());
                                s.setAmount(svc.getTotalAmount());
                                s.setCurrency(svc.getTotalCurrency());

                                services.add(s);
                            }
                        }

                        seat.setServices(services);
                        seat.setAvailable(!services.isEmpty());

                        seats.add(seat);
                    }
                }

                rowRes.setSeats(seats);
                rows.add(rowRes);
            }

            cabinRes.setRows(rows);
            cabins.add(cabinRes);
        }

        response.setCabins(cabins);
        return response;
    }
}
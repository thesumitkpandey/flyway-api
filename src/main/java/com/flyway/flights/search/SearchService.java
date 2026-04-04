package com.flyway.flights.search;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.flyway.common.ApiResponse;
import com.flyway.exception.CustomException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
public class SearchService {

    private final WebClient duffelWebClient;
    private final ObjectMapper objectMapper = new ObjectMapper();

    public SearchService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<List<SearchResponse.FlightOffer>> searchFlights(SearchRequest request) {
        String cabinClassMapped = mapCabinClass(request.getCabinClass());
        SupplierSearchRequest supplierPayload = createSupplierRequestPayload(request, cabinClassMapped);

        try {
            SupplierSearchResponse supplierResponse = duffelWebClient.post()
                    .uri("/air/offer_requests")
                    .bodyValue(supplierPayload)
                    .retrieve()
                    .bodyToMono(SupplierSearchResponse.class)
                    .block();


            List<SearchResponse.FlightOffer> internalOffers = mapToInternalResponse(supplierResponse);

            return ApiResponse.<List<SearchResponse.FlightOffer>>builder()
                    .success(true)
                    .message("Flights fetched successfully")
                    .data(internalOffers)
                    .build();

        } catch (Exception ex) {
            log.error("Duffel API call failed", ex);
            throw new CustomException("Failed to fetch flight offers", HttpStatus.BAD_GATEWAY);
        }
    }

    private List<SearchResponse.FlightOffer> mapToInternalResponse(SupplierSearchResponse supplier) {
        if (supplier == null || supplier.getData() == null || supplier.getData().getOffers() == null) {
            return new ArrayList<>();
        }

        return supplier.getData().getOffers().stream().map(offer -> {
            SearchResponse.FlightOffer internalOffer = new SearchResponse.FlightOffer();
            internalOffer.setOfferId(offer.getId());
            internalOffer.setCurrency(offer.getTotal_currency());
            internalOffer.setTotalAmount(offer.getTotal_amount() != null ? Double.parseDouble(offer.getTotal_amount()) : 0.0);
            
            // 1. Map Airline Detail from the 'owner' field
            if (offer.getOwner() != null) {
                SearchResponse.AirlineDetail airline = new SearchResponse.AirlineDetail();
                airline.setName(offer.getOwner().getName());
                airline.setIataCode(offer.getOwner().getIata_code());
                airline.setLogo(offer.getOwner().getLogo_symbol_url());
                internalOffer.setAirline(airline);
            }

            // 3. Map Slices and Segments
            internalOffer.setSlices(offer.getSlices().stream().map(s -> {
                SearchResponse.Slice internalSlice = new SearchResponse.Slice();
                internalSlice.setOrigin(s.getOrigin().getIata_code());
                internalSlice.setDestination(s.getDestination().getIata_code());
                internalSlice.setDuration(formatDuration(s.getDuration()));

                internalSlice.setSegments(s.getSegments().stream().map(seg -> {
                    SearchResponse.Segment internalSeg = new SearchResponse.Segment();
                    internalSeg.setOrigin(seg.getOrigin().getIata_code());
                    internalSeg.setDestination(seg.getDestination().getIata_code());
                    internalSeg.setDepartureTime(seg.getDeparting_at());
                    internalSeg.setArrivalTime(seg.getArriving_at());
                    internalSeg.setFlightNumber(seg.getMarketing_carrier_flight_number());
                    internalSeg.setAirlineName(seg.getMarketing_carrier() != null ? seg.getMarketing_carrier().getName() : null);
                    
                    // 4. Extract Cabin Class from passengers within segment
                    if (seg.getPassengers() != null && !seg.getPassengers().isEmpty()) {
                        internalSeg.setCabinClass(seg.getPassengers().get(0).getCabin_class());
                    }
                    
                    return internalSeg;
                }).collect(Collectors.toList()));

                return internalSlice;
            }).collect(Collectors.toList()));

            return internalOffer;
        }).collect(Collectors.toList());
    }

    private String mapCabinClass(String input) {
        return switch (input.toLowerCase()) {
            case "economy" -> "economy";
            case "premiumeconomy" -> "premium_economy";
            case "business" -> "business";
            case "first" -> "first";
            default -> throw new CustomException("Invalid cabin class", HttpStatus.BAD_REQUEST);
        };
    }


    private String formatDuration(String isoDuration) {
        if (isoDuration == null) return null;
        try {
            Duration d = Duration.parse(isoDuration);
            return String.format("%dh %dm", d.toHours(), d.toMinutesPart());
        } catch (Exception e) {
            return isoDuration;
        }
    }

    private SupplierSearchRequest createSupplierRequestPayload(SearchRequest request, String cabinClassMapped) {
        SupplierSearchRequest supplierRequest = new SupplierSearchRequest();
        SupplierSearchRequest.Data data = new SupplierSearchRequest.Data();

        data.setSlices(request.getSlices().stream().map(s -> {
            SupplierSearchRequest.Slice slice = new SupplierSearchRequest.Slice();
            slice.setOrigin(s.getOrigin());
            slice.setDestination(s.getDestination());
            slice.setDeparture_date(s.getDepartureDate().toString());
            return slice;
        }).collect(Collectors.toList()));

        data.setPassengers(request.getPassengers().stream().map(p -> {
            SupplierSearchRequest.Passenger passenger = new SupplierSearchRequest.Passenger();
            passenger.setType("adult");
            return passenger;
        }).collect(Collectors.toList()));

        data.setCabin_class(cabinClassMapped);
        supplierRequest.setData(data);
        return supplierRequest;
    }
}
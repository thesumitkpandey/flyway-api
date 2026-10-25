package com.flyway.flights.search;

import java.util.List;

public record SearchResponse(
        List<SupplierSearchResponse.Offer> offers
) {}
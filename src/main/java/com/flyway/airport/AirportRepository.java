package com.flyway.airport;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AirportRepository extends JpaRepository<AirportEntity, Long> {

   List<AirportEntity> findByIataCodeContainingIgnoreCase(String iataCode);

   List<AirportEntity> findByCityNameContainingIgnoreCase(String cityName);

   List<AirportEntity> findByAirportNameContainingIgnoreCase(String airportName);
}

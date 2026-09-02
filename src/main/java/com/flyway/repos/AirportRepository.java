package com.flyway.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flyway.entities.AirportEntity;

@Repository
public interface AirportRepository extends JpaRepository<AirportEntity, Long> {

   List<AirportEntity> findByIataCodeIgnoreCase(String iataCode);

   List<AirportEntity> findByCityNameContainingIgnoreCase(String cityName);

   List<AirportEntity> findByAirportNameContainingIgnoreCase(String airportName);
}

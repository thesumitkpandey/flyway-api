package com.flyway.repos;

import com.flyway.entities.TenantsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TenantsRepo extends JpaRepository<TenantsEntity, Integer> {
}
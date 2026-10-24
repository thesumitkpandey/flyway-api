package com.flyway.repos;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flyway.entities.UsersEntity;

@Repository
public interface UsersRepo extends JpaRepository<UsersEntity, Integer> {

    Optional<UsersEntity> findByEmailIgnoreCase(String email);

    boolean existsByEmailIgnoreCase(String email);
}

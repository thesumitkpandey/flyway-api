package com.flyway.repos;

import com.flyway.entities.UsersEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface usersRepo extends JpaRepository<UsersEntity, Integer> {
}
package com.flyway.entities;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
public class UsersEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "email", nullable = false, length = 50)
    private String email;

    @Column(name = "password", nullable = true, length = 200)
    private String password;

    @Column(name = "full_name", nullable = false, length = 100)
    private String fullName;

}

/*
crete table if not exists users (
    id bigint primary key auto_increment,
    email varchar(50) not null,
    password varchar(200),
    full_name varchar(100) not null,
);
*/
package com.concat.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Objects;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private int userId;
    private String username;
    private String password;
    private Integer role;
    private LocalDateTime createdAt;

    public User(String username, String password, Integer role, LocalDateTime createdAt) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.createdAt = createdAt;
    }
}

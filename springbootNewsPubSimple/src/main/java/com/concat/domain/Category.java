package com.concat.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {

    private int categoryId;
    private String name;

    public Category(String name) {
        this.name = name;
    }
}

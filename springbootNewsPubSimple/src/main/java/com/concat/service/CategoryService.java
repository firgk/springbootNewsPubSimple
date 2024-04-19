package com.concat.service;

import com.concat.domain.Category;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
    void insertCategory(Category category);

    void updateCategory(Category category);

    void deleteCategoryById(int categoryId);

    Category getCategoryById(int categoryId);

    List<Category> getAllCategories();

    // 可根据需要添加其他查询方法
}

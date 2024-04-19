package com.concat.service.impl;

import com.concat.domain.Category;
import com.concat.mapper.CategoryMapper;
import com.concat.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Override
    public void insertCategory(Category category) {
        categoryMapper.insertCategory(category);
    }

    @Override
    public void updateCategory(Category category) {
        categoryMapper.updateCategory(category);
    }

    @Override
    public void deleteCategoryById(int categoryId) {
        categoryMapper.deleteCategoryById(categoryId);
    }

    @Override
    public Category getCategoryById(int categoryId) {
        return  categoryMapper.getCategoryById(categoryId);
    }

    @Override
    public List<Category> getAllCategories() {
        return categoryMapper.getAllCategories();
    }
}

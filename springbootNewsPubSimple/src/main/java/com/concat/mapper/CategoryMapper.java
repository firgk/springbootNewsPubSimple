package com.concat.mapper;

import com.concat.domain.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface CategoryMapper {

    void insertCategory(Category category);

    void updateCategory(Category category);

    void deleteCategoryById(int categoryId);

    Category getCategoryById(int categoryId);

    List<Category> getAllCategories();

}

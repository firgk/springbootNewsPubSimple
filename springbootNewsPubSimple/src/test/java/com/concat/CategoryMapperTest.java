//package com.concat;
//
//import com.concat.domain.Category;
//import com.concat.mapper.CategoryMapper;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.util.List;
//
//@SpringBootTest
//public class CategoryMapperTest {
//
//    @Autowired
//    private CategoryMapper categoryMapper;
//
//    @Test
//    public void testInsertCategory() {
//        Category category = new Category();
//        category.setName("Test Category");
//
//        categoryMapper.insertCategory(category);
//
//        // Assuming there's a method to get category by ID in the mapper
//        Category retrievedCategory = categoryMapper.getCategoryById(category.getCategoryId());
//        // Perform assertions to verify correctness
//    }
//
//    @Test
//    public void testUpdateCategory() {
//        // Assuming there's a method to get category by ID in the mapper
//        Category category = categoryMapper.getCategoryById(2);
//        if (category != null) {
//            category.setName("Updated Test Category");
//            categoryMapper.updateCategory(category);
//
//            // Assuming there's a method to get category by ID in the mapper
//            Category updatedCategory = categoryMapper.getCategoryById(category.getCategoryId());
//            // Perform assertions to verify correctness
//        }
//    }
//
//    @Test
//    public void testDeleteCategory() {
//        // Assuming there's a method to get category by ID in the mapper
//        Category category = categoryMapper.getCategoryById(2);
//        if (category != null) {
//            categoryMapper.deleteCategoryById(category.getCategoryId());
//
//            // Assuming there's a method to get category by ID in the mapper
//            Category deletedCategory = categoryMapper.getCategoryById(category.getCategoryId());
//            // Perform assertions to verify correctness (deletedCategory should be null)
//        }
//    }
//
//    @Test
//    public void testGetAllCategories() {
//        List<Category> allCategories = categoryMapper.getAllCategories();
//        System.out.println(allCategories.get(0).getName());
//    }
//}

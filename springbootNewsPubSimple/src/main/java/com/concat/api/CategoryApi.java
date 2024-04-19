package com.concat.api;

import com.concat.domain.Category;
import com.concat.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("Category")
public class CategoryApi {
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/getAllCategories")
    public List<Category> getAllCategories(){
        return categoryService.getAllCategories();
    }
    @GetMapping("/delCategory/{id}")
    public String delCategory(@PathVariable String id){
        categoryService.deleteCategoryById(Integer.parseInt(id));
        return "true";
    }
    @GetMapping("insertCategory/{name}")
    public String insertCategory(@PathVariable String name){
        categoryService.insertCategory(new Category(name));
        return "true";
    }
    @GetMapping("deleteCategoryById/{id}")
    public String deleteCategoryById(@PathVariable String id){
        categoryService.deleteCategoryById(Integer.parseInt(id));
        return "true";
    }
}

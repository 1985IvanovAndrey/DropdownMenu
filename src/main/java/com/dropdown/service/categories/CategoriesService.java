package com.dropdown.service.categories;

import com.dropdown.entity.Categories;

import java.util.List;

public interface CategoriesService {

    public List<Categories> listNames();

    void addCategory(Categories categories);

    void deleteCategoryById(int id);

    void clearAllCategories();



}

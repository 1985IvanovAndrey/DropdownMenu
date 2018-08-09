package com.dropdown.dao.categories;

import com.dropdown.entity.Categories;

import java.util.List;

public interface CategoriesDao {

    public List<Categories> listNames();

    void addCategory(Categories categories);

    void deleteCategoryById(int id);

    void clearAllCategories();



}

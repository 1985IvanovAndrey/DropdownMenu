package com.dropdown.dao.subCategories;

import com.dropdown.entity.Categories;
import com.dropdown.entity.SubCategories;

import java.util.List;

public interface SubCategoriesDao {

    public List<SubCategories> listNames();

    void addCategory(SubCategories subCategories);

    void deleteCategoryById(int id);

    void clearAllSubCategories();

}

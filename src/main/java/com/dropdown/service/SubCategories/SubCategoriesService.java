package com.dropdown.service.SubCategories;

import com.dropdown.entity.SubCategories;

import java.util.List;

public interface SubCategoriesService {
    public List<SubCategories> listNames();

    void addCategory(SubCategories subCategories);

    void deleteCategoryById(int id);

    void clearAllSubCategories();

}

package com.dropdown.service.categories;

import com.dropdown.dao.categories.CategoriesDao;
import com.dropdown.entity.Categories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class CategoriesServiceImpl implements CategoriesService{

    @Autowired
    private CategoriesDao categoriesDao;

    @Override
    public List<Categories> listNames() {
        return categoriesDao.listNames();
    }

    @Override
    public void addCategory(Categories categories) {
        categoriesDao.addCategory(categories);
    }

    @Override
    public void deleteCategoryById(int id) {
        categoriesDao.deleteCategoryById(id);
    }

    @Override
    public void clearAllCategories() {
        categoriesDao.clearAllCategories();
    }
}

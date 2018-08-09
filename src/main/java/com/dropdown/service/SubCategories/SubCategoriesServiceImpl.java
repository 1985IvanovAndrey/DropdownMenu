package com.dropdown.service.SubCategories;

import com.dropdown.dao.subCategories.SubCategoriesDao;
import com.dropdown.entity.SubCategories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class SubCategoriesServiceImpl implements SubCategoriesService{

    @Autowired
    private SubCategoriesDao subCategoriesDao;
    @Override
    public List<SubCategories> listNames() {
        return subCategoriesDao.listNames();
    }

    @Override
    public void addCategory(SubCategories subCategories) {
        subCategoriesDao.addCategory(subCategories);
    }

    @Override
    public void deleteCategoryById(int id) {
        subCategoriesDao.deleteCategoryById(id);

    }

    @Override
    public void clearAllSubCategories() {

    }
}

package com.dropdown.dao.subCategories;

import com.dropdown.entity.Categories;
import com.dropdown.entity.SubCategories;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SubCategoriesDaoImpl implements SubCategoriesDao{

    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<SubCategories> listNames() {
        Session session=sessionFactory.getCurrentSession();
        List<SubCategories> names = session.createQuery("from SubCategories").list();
        return names;
    }

    @Override
    public void addCategory(SubCategories subCategories) {
        Session session=sessionFactory.getCurrentSession();
        session.persist(subCategories);

    }

    @Override
    public void deleteCategoryById(int id) {
        Session session=sessionFactory.getCurrentSession();
        SubCategories subCategories = (SubCategories) session.load(SubCategories.class, new Integer(id));
        if (subCategories != null) {
            session.delete(subCategories);
        }

    }

    @Override
    public void clearAllSubCategories() {
        Session session=sessionFactory.getCurrentSession();
        session.createQuery("DELETE from SubCategories");
//        names.clear();
//        System.out.println(names);


    }
}

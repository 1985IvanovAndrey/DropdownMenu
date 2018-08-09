package com.dropdown.dao.categories;

import com.dropdown.entity.Categories;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoriesDaoImpl implements CategoriesDao {

    @Autowired
    private SessionFactory sessionFactory;



    @Override
    public List<Categories> listNames() {
        Session session=sessionFactory.getCurrentSession();
        List<Categories> names = session.createQuery("from Categories").list();
        return names;
    }

    @Override
    public void addCategory(Categories categories) {
        Session session=sessionFactory.getCurrentSession();
        session.persist(categories);
    }

    @Override
    public void deleteCategoryById(int id) {
        Session session=sessionFactory.getCurrentSession();
        Categories categories = (Categories) session.load(Categories.class, new Integer(id));
        if (categories != null) {
            session.delete(categories);
        }
    }

    @Override
    public void clearAllCategories() {
        Session session=sessionFactory.getCurrentSession();
        session.createQuery("DELETE from Categories");
//        names.clear();
//        System.out.println(names);

    }
}

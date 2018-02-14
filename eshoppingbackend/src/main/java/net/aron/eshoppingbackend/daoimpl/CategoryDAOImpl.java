package net.aron.eshoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.aron.eshoppingbackend.dao.CategoryDAO;
import net.aron.eshoppingbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public List<Category> list() {

		//FROM Category is from Entity, not from SQL Query
		String selectActiveCategory = "FROM Category WHERE active = :active";
		
		//query from hibernate query
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/*
	 * getting single category based on id
	 * */
	@Override
	public Category get(int id) {

		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	/*
	 * add category to database
	 * */
	@Override
	public boolean add(Category category) {
		try {
			//add category to database
			sessionFactory.getCurrentSession().persist(category);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	/*
	 * update category from database
	 * */
	@Override
	public boolean update(Category category) {
		try {
			//update category from database
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	/*
	 * delete category
	 * */
	@Override
	public boolean delete(Category category) {
		
		category.setActive(false);
		try {
			//delete category from database
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}

package net.aron.eshoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.aron.eshoppingbackend.dao.CategoryDAO;
import net.aron.eshoppingbackend.dto.Category;

public class CategoryTestCase {
	
	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.aron.eshoppingbackend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}

	
	/*@Test
	public void testAddCategory() {
		
		category = new Category();
		category.setName("Television");
		category.setDescription("this is some description for television");
		category.setImageURL("CAT_1.png");
		
		assertEquals("Successfully Added Category Inside the Table", true,categoryDAO.add(category));
		
	}*/
	
	/*@Test
	public void testGetCategory() {
		category = categoryDAO.get(1);
		assertEquals("Successfully fetched single Category from Table","Television",category.getName());
	}*/
	
	/*@Test
	public void testUpdateCategory() {
		category = categoryDAO.get(1);
		category.setName("TV");
		assertEquals("Successfully updated a single Category in the Table",true,categoryDAO.update(category));
	}*/
	
	/*@Test
	public void testDeleteCategory() {
		category = categoryDAO.get(1);
		assertEquals("Successfully deleted a single Category in the Table",true,categoryDAO.delete(category));
	}*/
	
	/*@Test
	public void testListCategory() {
		category = categoryDAO.get(1);
		assertEquals("Successfully fetched the list of Categories in the Table",3,categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory() {
		//add operation
		category = new Category();
		category.setName("Laptop");
		category.setDescription("this is some description for laptop");
		category.setImageURL("CAT_1.png");
		assertEquals("Successfully Added Category Inside the Table", true,categoryDAO.add(category));
		
		category = new Category();
		category.setName("Television");
		category.setDescription("this is some description for television");
		category.setImageURL("CAT_2.png");
		assertEquals("Successfully Added Category Inside the Table", true,categoryDAO.add(category));
		
		//fetching and renaming
		category = categoryDAO.get(2);
		category.setName("TV");
		assertEquals("Successfully updated a single Category in the Table",true,categoryDAO.update(category));
		
		//delete the category
		assertEquals("Successfully deleted a single Category in the Table",true,categoryDAO.delete(category));
		
		//fetching the list
		assertEquals("Successfully fetched the list of Categories in the Table",1,categoryDAO.list().size());
	}
	
}

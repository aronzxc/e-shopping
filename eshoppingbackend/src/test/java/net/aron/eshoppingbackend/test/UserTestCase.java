package net.aron.eshoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.aron.eshoppingbackend.dao.UserDAO;
import net.aron.eshoppingbackend.dto.Address;
import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.aron.shoppingbackend");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");

	}
	
	@Test
	public void testAdd() {
		
		 user = new User();
		 user.setFirstName("Aaron");
		 user.setLastName("Claudo");
		 user.setEmail("aronzxc@gmail.com");
		 user.setContactNumber("09262462614");
		 user.setRole("USER");
		 user.setPassword("wordpass");
		 
		 //add the user
		 assertEquals("Failed to add user!", true, userDAO.addUser(user));
		 address = new Address();
		 address.setAddressLineOne("0600 Crusher Bigte");
		 address.setAddressLineTwo("Near Baranggay Hall");
		 address.setCity("Norzagaray");
		 address.setState("Bulacan");
		 address.setCountry("Philippines");
		 address.setPostalCode("3023");
		 address.setBilling(true);
		 
		 //link the user with the address using user id
		 address.setUserId(user.getId());
		 
		//add the address
		 assertEquals("Failed to add address!", true, userDAO.addAddress(address));
		 
		if(user.getRole().equals("USER")) {
			//create a cart for this user
			cart = new Cart();
			cart.setUserId(user.getId());
			
			//add the cart
			 assertEquals("Failed to add cart!", true, userDAO.addCart(cart));
			 
			//add a shipping address for this user
			 
			 assertEquals("Failed to add user!", true, userDAO.addUser(user));
			 address = new Address();
			 address.setAddressLineOne("0600 Crusher Bigte");
			 address.setAddressLineTwo("Near Baranggay Hall");
			 address.setCity("Norzagaray");
			 address.setState("Bulacan");
			 address.setCountry("Philippines");
			 address.setPostalCode("3023");
			 //set shipping to true
			 address.setShipping(true);
			 
			 //link it with the user
			 address.setUserId(user.getId());
			 
			 //add the shipping address
			 assertEquals("Failed to add shipping address!",true, userDAO.addAddress(address));
		}
	}
	
}

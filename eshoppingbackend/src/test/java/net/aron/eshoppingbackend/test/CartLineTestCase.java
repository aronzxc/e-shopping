package net.aron.eshoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.aron.eshoppingbackend.dao.CartLineDAO;
import net.aron.eshoppingbackend.dao.ProductDAO;
import net.aron.eshoppingbackend.dao.UserDAO;
import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.CartLine;
import net.aron.eshoppingbackend.dto.Product;
import net.aron.eshoppingbackend.dto.User;

public class CartLineTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CartLineDAO cartLineDAO = null;
	private static ProductDAO productDAO = null;
	private static UserDAO userDAO = null;

	private Product product = null;
	private User user = null;
	private Cart cart = null;
	private CartLine cartLine = null;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.aron.eshoppingbackend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
		cartLineDAO = (CartLineDAO) context.getBean("cartLineDAO");
		
	}
	
	@Test
	public void testAddNewCartLine() {
		// 1. get the user
		user = userDAO.getByEmail("aronzxc@gmail.com");		
		
		// 2. fetch the cart
		cart = user.getCart();
		
		// 3. get the product
		product = productDAO.get(11);
		
		// 4. create a new cart line
		cartLine = new CartLine();
		cartLine.setBuyingPrice(product.getUnitPrice());
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		cartLine.setTotal(cartLine.getProductCount() * product.getUnitPrice());
		cartLine.setAvailable(true);
		cartLine.setCartId(cart.getId());
		cartLine.setProduct(product);
		
		assertEquals("Failed to add the cartLine", true, cartLineDAO.add(cartLine));
		
		// update cart
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1);
		
		assertEquals("Failed to update the cart", true, cartLineDAO.updateCart(cart));
	}
	
}

package net.aron.eshopping.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.aron.eshopping.model.UserModel;
import net.aron.eshoppingbackend.dao.CartLineDAO;
import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.CartLine;

@Service("cartService")
public class CartService {

	@Autowired
	private CartLineDAO cartLineDAO;
	
	@Autowired
	private HttpSession session;
	
	//return the cart of the user who has logged in
	private Cart getCart() {
		
		return ((UserModel)session.getAttribute("userModel")).getCart();
	}
	
	//return the entire cart lines
	public List<CartLine> getCartLines(){
		return cartLineDAO.list(this.getCart().getId());
	}
	
	
	
}

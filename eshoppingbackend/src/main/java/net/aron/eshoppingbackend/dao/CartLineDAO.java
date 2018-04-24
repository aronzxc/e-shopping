package net.aron.eshoppingbackend.dao;

import java.util.List;

import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.CartLine;

public interface CartLineDAO {

	//common method
	public CartLine get(int id);
	public boolean add(CartLine cartLine);
	public boolean update(CartLine cartLine);
	public boolean delete(CartLine cartLine);
	public List<CartLine> list(int cartId);

	// other related method
	public List<CartLine> listAvailable(int cartId);
	public CartLine getByCartAndProduct(int cartId, int productId);

	//update a cart
	boolean updateCart(Cart cart);
}

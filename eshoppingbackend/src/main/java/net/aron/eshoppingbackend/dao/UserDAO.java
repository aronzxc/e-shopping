package net.aron.eshoppingbackend.dao;

import net.aron.eshoppingbackend.dto.Address;
import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.User;

public interface UserDAO {

	//add user
	boolean addUser(User user);
	
	//add an address
	boolean addAddress(Address address);
	
	//add a cart
	boolean addCart(Cart cart);
}

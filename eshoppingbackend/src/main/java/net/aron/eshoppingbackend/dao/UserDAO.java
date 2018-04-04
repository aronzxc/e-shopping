package net.aron.eshoppingbackend.dao;

import java.util.List;

import net.aron.eshoppingbackend.dto.Address;
import net.aron.eshoppingbackend.dto.Cart;
import net.aron.eshoppingbackend.dto.User;

public interface UserDAO {

	//add user
	boolean addUser(User user);
	User getByEmail(String email);
	
	//add an address
	boolean addAddress(Address address);
	//alternative
	//Address getBillingAddress(int userId);
	//List<Address> listShippingAddresses(int userId);
	
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
	
	//update a cart
	boolean updateCart(Cart cart);
}

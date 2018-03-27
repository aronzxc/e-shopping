package net.aron.eshoppingbackend.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cart {

	/*
	 * private fields
	 * */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "grand_total")
	private double grandTotal;
	@Column(name = "cart_lines")
	private double cartLines;
	
	/*
	 * setters and getters for the fields
	 * */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public double getCartLines() {
		return cartLines;
	}
	public void setCartLines(double cartLines) {
		this.cartLines = cartLines;
	}
	
	/*
	 * toString 
	 * */
	@Override
	public String toString() {
		return "Cart [id=" + id + ", userId=" + userId + ", grandTotal=" + grandTotal + ", cartLines=" + cartLines
				+ "]";
	}
	
	
	
}

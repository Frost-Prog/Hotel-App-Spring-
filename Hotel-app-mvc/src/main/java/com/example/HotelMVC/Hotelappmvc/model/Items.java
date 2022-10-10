package com.example.HotelMVC.Hotelappmvc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



public class Items {


	private long itemNumber;

	private String itemName;

	private int price;

	private float Itemquantity;
	
	private ItemCategory category;
	
	private byte[] imagedata;
	
	public byte[] getImagedata() {
		return imagedata;
	}
	public void setImagedata(byte[] imagedata) {
		this.imagedata = imagedata;
	}
	
	public ItemCategory getCategory() {
		return category;
	}
	public void setCategory(ItemCategory category) {
		this.category = category;
	}
	public long getItemNumber() {
		return itemNumber;
	}
	public void setItemNumber(long itemNumber) {
		this.itemNumber = itemNumber;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public float getItemquantity() {
		return Itemquantity;
	}
	public void setItemquantity(float itemquantity) {
		Itemquantity = itemquantity;
	}
	
	
	public Items() {
		super();
	}

	public Items(long itemNumber, String itemName, int price, float itemquantity,byte[] imagedata, ItemCategory category) {
		super();
		this.itemNumber = itemNumber;
		this.itemName = itemName;
		this.price = price;
		Itemquantity = itemquantity;
		this.imagedata = imagedata;
		this.category = category;
	}
	
	
}

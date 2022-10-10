package com.example.hotelapp.hotelapp.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Lob;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.UpdateTimestamp;




@Entity
public class Items {
	
	@Id
	@Column(name="itemNumber")
	@NotNull(message = "Enter ID")
	private long itemNumber;
	
	
	@Column(name="itemName")
	@Size(max = 15, min = 4, message= "Invalid Item Name")
	private String itemName;
	
	
	@Column(name="price")
	@NotNull(message="Enter price")
	private int price;
	
	@Column(name="itemquantity")
	@NotNull(message = "Enter Quantity")
	private float Itemquantity;
	
	@Lob
	@Column(name="images")
	private byte[] imagedata;

	@UpdateTimestamp
	Date timeStamp;
	
	@Enumerated
	private ItemCategory category;
	

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
	public Date getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
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
	
	public Items (long itemNumber, String itemName, int price, float itemquantity, byte[] imagedata, Date timeStamp,
			ItemCategory category) {
		super();
		this.itemNumber = itemNumber;
		this.itemName = itemName;
		this.price = price;
		Itemquantity = itemquantity;
		this.imagedata = imagedata;
		this.timeStamp = timeStamp;
		this.category = category;
	}
	
	
	
}

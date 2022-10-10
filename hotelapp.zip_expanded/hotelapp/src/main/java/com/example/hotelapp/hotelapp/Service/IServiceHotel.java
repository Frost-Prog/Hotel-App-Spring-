package com.example.hotelapp.hotelapp.Service;

import java.util.List;

import com.example.hotelapp.hotelapp.model.ItemCategory;
import com.example.hotelapp.hotelapp.model.Items;

public interface IServiceHotel {
	
	public Items saveItem(Items item);
	
	public Items findItem(long itemNumber);
	
	public Items updateItem(Items item);
	
	public boolean deleteItem(long itemNumber);
	
	public List<Items> getAllItems();
	
	public Items getItemByItemName(String itemName);
	
	public List<Items> findByCategory(ItemCategory category);
	
	
}

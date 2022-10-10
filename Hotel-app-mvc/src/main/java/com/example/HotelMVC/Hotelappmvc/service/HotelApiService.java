package com.example.HotelMVC.Hotelappmvc.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.example.HotelMVC.Hotelappmvc.model.ItemCategory;
import com.example.HotelMVC.Hotelappmvc.model.Items;

@Service
public class HotelApiService {
	
	private String HotelApiUrl = "http://localhost:8080/item";
	
	@Autowired
	private RestTemplate rt;
	
	public Items addItem(Items item) {
		Items addeditem = rt.postForObject(HotelApiUrl, item, Items.class);
		return addeditem;
	}
	
	public Items updateItem(Items item) {
		Items updateditem = rt.postForObject(HotelApiUrl+"/u", item, Items.class);
		return updateditem;
	}
	
	public Items getItemsByName(String itemName) {
		Items item = rt.getForObject(HotelApiUrl+"/"+itemName+"/itemName", Items.class);
		return item;
	}
	
	public void deleteItem(long itemNumber) {
		rt.delete(HotelApiUrl+"/del/"+itemNumber);
	}
	
	public List<Items> getAllitem(){
		Items[] ArrayAllItems= rt.getForObject(HotelApiUrl, Items[].class);
		List<Items> AllItems= Arrays.asList(ArrayAllItems);
		return AllItems;
	}

	public Items getItems(long itemNumber) {
		Items update= rt.getForObject(HotelApiUrl+"/"+itemNumber, Items.class);
		System.out.println(update);
		return update;
	}
	public List<Items> getCategory(ItemCategory category) {
		Items[] ArrayCat = rt.getForObject(HotelApiUrl+"/category/"+category, Items[].class);
		List<Items> CatOfItem= Arrays.asList(ArrayCat);
		return CatOfItem;
 	}
}

package com.example.hotelapp.hotelapp.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.hotelapp.hotelapp.model.ItemCategory;
import com.example.hotelapp.hotelapp.model.Items;

public interface HotelRepo extends JpaRepository<Items, Long> {
	
	public Items findByItemName(String ItemName);
	
	public List<Items> findByCategory(ItemCategory category);
}

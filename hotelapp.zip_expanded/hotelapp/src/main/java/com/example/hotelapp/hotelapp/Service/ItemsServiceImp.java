package com.example.hotelapp.hotelapp.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.example.hotelapp.hotelapp.Repository.HotelRepo;
import com.example.hotelapp.hotelapp.model.ItemCategory;
import com.example.hotelapp.hotelapp.model.Items;

@Service
public class ItemsServiceImp implements IServiceHotel {

	@Autowired
	private HotelRepo repo;
	
	@Override
	@Transactional
	public Items saveItem(Items item) {
		return repo.save(item);
	}

	@Override
	public Items findItem(long itemNumber) {
		return repo.findById(itemNumber).get();
	}

	@Override
	@Transactional
	public Items updateItem(Items item) {
		return repo.save(item);
	}

	@Override
	@Transactional
	public boolean deleteItem(long itemNumber) {
		repo.deleteById(itemNumber);
		return !repo.existsById(itemNumber);
	}

	@Override
	public List<Items> getAllItems() {
		return repo.findAll(Sort.by(Direction.ASC, "timeStamp"));
	}
	
	@Override
	public Items getItemByItemName(String itemName) {
		return repo.findByItemName(itemName);
	}

	@Override
	public List<Items> findByCategory(ItemCategory category) {
		return repo.findByCategory(category);
	}
}

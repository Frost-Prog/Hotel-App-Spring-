package com.example.hotelapp.hotelapp.Controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.hotelapp.hotelapp.Service.IServiceHotel;
import com.example.hotelapp.hotelapp.model.ItemCategory;
import com.example.hotelapp.hotelapp.model.Items;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;



@RestController
@RequestMapping("/item")
@Tag(name="Hotel Api", description = "This the Api for Item Management.")
public class ItemController {
	
	@Autowired
	private IServiceHotel service;
	
	@Operation(summary = "Get the Item by using Item Number")
	@ApiResponse(responseCode = "200", description = "Getting the Item using Item Number", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@GetMapping("/{item-code}")
	public Items getItem(@PathVariable("item-code") long itemNumber) {
		return service.findItem(itemNumber);
	}
	
	
	@Operation(summary = "Add an Item")
	@ApiResponse(responseCode = "200", description = "Item has been Added", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@PostMapping
	public Items addItems(@Valid @RequestBody Items item) {
		return service.saveItem(item);
	}
	
	
	@Operation(summary = "Update the Item")
	@ApiResponse(responseCode = "200", description = "Item has been Updated", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@PostMapping("/u")
	public Items updateItems(@Valid @RequestBody Items item) {
		return service.updateItem(item);
	}
	
	@Operation(summary = "Get All Items")
	@ApiResponse(responseCode = "200", description = "All the Items have been fetched from the database", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@GetMapping
	public List<Items> getAllItems(){
		return service.getAllItems();
	}
	
	@Operation(summary = "Delete Number by Item Number")
	@ApiResponse(responseCode = "200", description = "Item has been Deleted", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@DeleteMapping("/del/{itemNumber}")
	public boolean deleteItem(@PathVariable("itemNumber") long itemNumber) {
		return service.deleteItem(itemNumber);
	}
	
	@Operation(summary = "Find an Item by it's Name")
	@ApiResponse(responseCode = "200", description = "Item has been Found", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@GetMapping("/{item-name}/itemName")
	public Items findItemByName(@PathVariable("item-name") String itemName) {
		return service.getItemByItemName(itemName);	
	}
	
	
	@Operation(summary = "Get Item by Category")
	@ApiResponse(responseCode = "200", description = "Items have been fetched using Categoryp", 
	content = {@Content(mediaType = "application/json", schema = @Schema(implementation = Items.class))})
	@GetMapping("/category/{item-category}")
	public List<Items> getByCategory(@PathVariable("item-category") String category){
		ItemCategory it = ItemCategory.valueOf(category);
		return service.findByCategory(it);
	}
	}


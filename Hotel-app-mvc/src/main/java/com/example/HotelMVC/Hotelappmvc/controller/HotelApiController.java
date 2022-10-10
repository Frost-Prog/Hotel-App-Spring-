package com.example.HotelMVC.Hotelappmvc.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

import javax.print.DocFlavor.BYTE_ARRAY;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.client.HttpServerErrorException.InternalServerError;
import org.springframework.web.multipart.MultipartFile;

import com.example.HotelMVC.Hotelappmvc.model.ItemCategory;
import com.example.HotelMVC.Hotelappmvc.model.Items;
import com.example.HotelMVC.Hotelappmvc.service.HotelApiService;

@Controller
public class HotelApiController {
	
	@Autowired
	HotelApiService HotelApi;
	
	@GetMapping("/search-item")
	public String searchItemForm() {
		return "searchByNameR.jsp";
	}
	
	@PostMapping("/search-item")
	public String searchItem(@RequestParam("item-name") String itemName, Model m) {
		if(HotelApi.getItemsByName(itemName)!=null) {
		Items item =HotelApi.getItemsByName(itemName);
		m.addAttribute("item", item);
		return "searchByNameP.jsp";		
	}
		else {
			return "ItemNotFound.jsp";
		}
		}
	
	@GetMapping("/add-item")
	public String addItemForm() {
		return "addNewItemR.jsp";
	}
	
	@PostMapping("/add-item")
	public String addItem(@ModelAttribute("item") Items item, @RequestPart("file") MultipartFile file) throws IOException {
		byte[] imageAdd= file.getBytes();
		item.setImagedata(imageAdd);
		HotelApi.addItem(item);
		return "redirect:/find-all";
	}
	
	@GetMapping("/find-all")
	public String getAllItems(Model m) {
		List<Items> AllItems = HotelApi.getAllitem();
		Collections.reverse(AllItems);
		m.addAttribute("items",AllItems);
		return "FindAllTable.jsp";
	}
	
	@GetMapping("/delete/{itemNumber}")
	public String deleteI(@PathVariable("itemNumber") long itemNumber) {
		HotelApi.deleteItem(itemNumber);
		return "redirect:/find-all";
	}
	
	@GetMapping("update-{itemNumber}-up")
	public String UpdateI(@PathVariable("itemNumber") long itemNumber, Model m) {
		Items item4 =HotelApi.getItems(itemNumber);
		m.addAttribute("item1", item4);
		return "updateR.jsp";
	}
	@PostMapping("update-{itemNumber}-up")
	public String updateP(@ModelAttribute("item_u") Items item, @RequestPart("file") MultipartFile file) throws IOException {
		byte[] imageAdd= file.getBytes();
		item.setImagedata(imageAdd);
		HotelApi.updateItem(item);
		return "updateMessage.jsp";
	}
	
	@PostMapping("/search-number")
	public String searchNumber(@RequestParam("item-number") long itemNumber, Model m) throws NoSuchElementException {
		try {
		Items item3 =HotelApi.getItems(itemNumber);
		m.addAttribute("item", item3);
		return "searchByNumber.jsp";
	}
		catch (Exception e) {
			return "ItemNotFound.jsp";
		}
	}
	@GetMapping("/calculate-{itemNumber}")
	public String calculate(@PathVariable("itemNumber") long itemNumber, Model m) {
		float orderquantity=(float)2.0;
		Items item10=HotelApi.getItems(itemNumber);
		float newQuantity=item10.getItemquantity();
		if(newQuantity>=orderquantity) {
		item10.setItemquantity((float) (newQuantity-orderquantity));
		HotelApi.updateItem(item10);
		m.addAttribute("item_c",item10);
		return "Alert.jsp";
		}
		else {
			return "warning.jsp";
		}
	}
	
	@GetMapping("/{item-category}")
	public String itemCat(@PathVariable("item-category") String category, Model m) {
		ItemCategory CAT = ItemCategory.valueOf(category); 
		List<Items> CategoryItems = HotelApi.getCategory(CAT);
		Collections.reverse(CategoryItems);
		m.addAttribute("item_c",CategoryItems);
		return "Category.jsp";	
	}
	
	@GetMapping("/mainpage")
	public String mainpage(Model m) { 
		List<Items> CategoryItems1 = HotelApi.getCategory(ItemCategory.Starter);
		Collections.reverse(CategoryItems1);
		m.addAttribute("item_c",CategoryItems1);
		
		List<Items> CategoryItems2 = HotelApi.getCategory(ItemCategory.Beverages);
		Collections.reverse(CategoryItems2);
		m.addAttribute("item_c2",CategoryItems2);
		
		List<Items> CategoryItems3 = HotelApi.getCategory(ItemCategory.Soup);
		Collections.reverse(CategoryItems3);
		m.addAttribute("item_c3",CategoryItems3);
		
		List<Items> CategoryItems4 = HotelApi.getCategory(ItemCategory.Kaju);
		Collections.reverse(CategoryItems4);
		m.addAttribute("item_c4",CategoryItems4);
		
		List<Items> CategoryItems5 = HotelApi.getCategory(ItemCategory.Paneer);
		Collections.reverse(CategoryItems5);
		m.addAttribute("item_c5",CategoryItems5);
		
		List<Items> CategoryItems6 = HotelApi.getCategory(ItemCategory.Kofta);
		Collections.reverse(CategoryItems6);
		m.addAttribute("item_c6",CategoryItems6);
		
		List<Items> CategoryItems7 = HotelApi.getCategory(ItemCategory.Roti);
		Collections.reverse(CategoryItems7);
		m.addAttribute("item_c7",CategoryItems7);
		
		List<Items> CategoryItems8 = HotelApi.getCategory(ItemCategory.Rice);
		Collections.reverse(CategoryItems8);
		m.addAttribute("item_c8",CategoryItems8);
		
		List<Items> CategoryItems9 = HotelApi.getCategory(ItemCategory.IceCream);
		Collections.reverse(CategoryItems9);
		m.addAttribute("item_c9",CategoryItems9);
		return "NewFile.jsp";
	}
	
}

package com.javamuk.product.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;
import com.javamuk.product.service.MyProductCreateService;

@Controller
public class MyProductCreateController {
	
	@Inject
	private MyProductCreateService service;
	
	@RequestMapping(value = "/product/newProduct", method = RequestMethod.GET)
	public String newProductGET() {
		return "product/newProduct";
	}
	
	@RequestMapping(value = "/product/newProduct", method = RequestMethod.POST)
	public String newProductPOST(Product product,HttpServletRequest request) throws IllegalStateException, IOException {
		
		int result = service.createProduct(product,request);
		
		
		return "product/createProductSuccess";
	}
	
	@RequestMapping(value = "/product/category01", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject category01() {
		List<First_Category> list = service.readFirst_category();
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("first_Category", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}
	
	@RequestMapping(value = "/product/category02", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject category02(First_Category first_Category) {
		List<Second_Category> list = service.readSecond_category(first_Category);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("second_Category", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}
	
	
	@RequestMapping(value = "/product/brand", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject brand(Second_Category second_Category) {
		List<Brand> list = service.readBrand(second_Category);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("brand_Category", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}
	
	@RequestMapping(value = "/product/createBrand", method = RequestMethod.GET)
	@ResponseBody
	public int createBrand(Brand brand) {
		System.out.println(brand);
		return service.createBrand(brand);
	}
	
	
	@RequestMapping(value = "/product/brandSelect", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject brandSelect(Brand brand) {
		List<Brand> list = service.brandSelect(brand);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("brandSelect", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(map);
		return jsonObject;
	}
	
/*	@RequestMapping(value = "/product/photofiles", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject photofiles(MultipartFile files[]) {
		System.out.println(files);
		List<Brand> list = service.brandSelect(brand);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("brandSelect", list);
		JSONObject jsonObject = new JSONObject();
		//jsonObject.putAll(map);
		return jsonObject;
	}*/
	
	
	
	


}

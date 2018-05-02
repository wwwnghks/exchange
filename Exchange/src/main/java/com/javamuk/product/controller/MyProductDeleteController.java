package com.javamuk.product.controller;




import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javamuk.domain.Product;
import com.javamuk.product.service.MyProductDeleteService;



@Controller
public class MyProductDeleteController {

	@Inject
	private MyProductDeleteService service;
	
	@RequestMapping(value = "/product/myProductDelete", method = RequestMethod.GET)
	public String myProductDeleteGET(Product product,Model model) {
		service.myProductDelete(product);
		
		return "product/myProductDelete";
	}
	


}

package com.javamuk.product.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MyProductReadController {

	
	@RequestMapping(value = "/product/myProduct", method = RequestMethod.GET)
	public String myProductGET() {
		return "product/myProduct";
	}

}

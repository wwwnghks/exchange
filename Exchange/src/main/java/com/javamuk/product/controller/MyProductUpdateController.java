package com.javamuk.product.controller;


import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javamuk.domain.Product;
import com.javamuk.product.service.MyProductReadService;
import com.javamuk.product.service.MyProductUpdateService;


@Controller
public class MyProductUpdateController {

	@Inject
	private MyProductUpdateService updateservice;
	
	@Inject
	private MyProductReadService readservice;
	
	
	@RequestMapping(value = "/product/myProductModify", method = RequestMethod.GET)
	public String myProductUpdateGET(Product product,Model model) {
		Product resultProduct= readservice.myProductOne(product);
		model.addAttribute("myProduct", resultProduct);
		return "product/myProductModify";
	}
	
	@RequestMapping(value = "/product/myProductModify", method = RequestMethod.POST)
	public String myProductUpdatePOST(Product product,HttpServletRequest request) throws IllegalStateException, IOException {
		updateservice.myProductUpdate(product,request);
		return "product/updateProductSuccess";
	}
	
	@RequestMapping(value = "/product/myProductModifyGood", method = RequestMethod.GET)
	public String myProductUpdateSuccess(Product product) {
		return "redirect:../product/myProduct";
	}
	

	
	

}

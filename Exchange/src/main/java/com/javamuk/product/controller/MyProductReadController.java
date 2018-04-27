package com.javamuk.product.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.product.service.MyProductReadService;


@Controller
public class MyProductReadController {

	@Inject
	private MyProductReadService service;
	
	@RequestMapping(value = "/product/myProduct", method = RequestMethod.GET)
	public String myProductGET(Model model,HttpSession session) {
		Member member = (Member) session.getAttribute("session_member");
		List<Product> list = service.myProductAll(member);
		model.addAttribute("productList", list);
		return "product/myProduct";
	}
	
	@RequestMapping(value = "/product/myProductRead", method = RequestMethod.GET)
	public String myProductReadGET(Model model,Product product) {
		Product resultProduct= service.myProductOne(product);
		model.addAttribute("productOne", resultProduct);
		return "product/myProductRead";
	}

}

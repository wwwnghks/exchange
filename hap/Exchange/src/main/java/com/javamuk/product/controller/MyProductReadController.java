package com.javamuk.product.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;
import com.javamuk.product.service.MyProductReadService;
import com.javamuk.product.service.MyProductUpdateService;


@Controller
public class MyProductReadController {

	@Inject
	private MyProductReadService service;
	
	@Inject
	private MyProductUpdateService updateservice;
	
	@RequestMapping(value = "/product/myProduct", method = RequestMethod.GET)
	public String myProductGET(Model model,HttpSession session) {
		Member member = (Member) session.getAttribute("session_member");
		List<Product> list = service.myProductAll(member);
		model.addAttribute("productList", list);
		return "product/myProduct";
	}
	
	@RequestMapping(value = "/product/myProductRead", method = RequestMethod.GET)
	public String myProductReadGET(Model model,Product product,HttpSession session) {
		Product resultProduct= service.myProductOne(product);
		Member ownerMember = service.ownerMember(product);
		updateservice.updateCnt(product,session);
		model.addAttribute("ownerMember", ownerMember);
		model.addAttribute("productOne", resultProduct);
		return "product/myProductRead";
	}
	
	@RequestMapping(value = "/product/locationRead", method = RequestMethod.GET)
	public String productLocationRead(@RequestParam("location") String location,Model model) {
		Product location_product = new Product();
		location_product.setPro_location(location);
		List<Product> location_list = service.locationProduct(location_product);
		model.addAttribute("location_list", location_list);
		model.addAttribute("location",location);
		return "product/locationRead";
	}
	
	@RequestMapping(value = "/product/productSearch", method = RequestMethod.GET)
	public String productSearchGET(Product product,Model model) {
		List<Product> search_list= service.productSearch(product);
		model.addAttribute("search_list", search_list);
		model.addAttribute("search_product", product);
		return "product/productSearch";
	}
	
	
	@RequestMapping(value = "/product/productHashSearch", method = RequestMethod.GET)
	public String tagSearchGET(Product product,Model model) {
		List<Product> tag_list= service.tagSearch(product);
		model.addAttribute("tag_list", tag_list);
		model.addAttribute("search_product", product);
		return "product/productHashSearch";
	}
	
	@RequestMapping(value = "/product/productCateSearch", method = RequestMethod.GET)
	public String productCateSearch(@RequestParam("type") String type,@RequestParam("product") String idx,@RequestParam("search") String search,Model model) {
		First_Category fir = new First_Category();
		Second_Category sec = new Second_Category();
		Brand bra = new Brand();
		if(type.equals("first")) {
			fir.setFir_idx(Integer.parseInt(idx));
			List<Product> list = service.fir_search(fir);
			model.addAttribute("search_list", list);
			model.addAttribute("searchName", search);
		}else if(type.equals("second")) {
			sec.setSec_idx(Integer.parseInt(idx));
			List<Product> list = service.sec_search(sec);
			model.addAttribute("search_list", list);
			model.addAttribute("searchName", search);
		}else if(type.equals("brand")){
			bra.setBra_idx(Integer.parseInt(idx));
			List<Product> list = service.bra_search(bra);
			model.addAttribute("search_list", list);
			model.addAttribute("searchName", search);
		}
		return "product/productCateSearch";
	}
	
	
	
	

	
	

}
package com.javamuk.product.controller;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.product.service.FavoriteDeleteService;


@Controller
public class FavoriteDeleteController {

	@Inject
	private FavoriteDeleteService service;

	@RequestMapping(value = "/product/favoriteRead", method = RequestMethod.POST)
	public String favoriteProductDelete(@RequestParam("fav_pro_arr") List<Integer> fav_pro_idx) {
		HashMap<String, Object> fpi = new HashMap<String,Object>();
		fpi.put("fav_pro_idx",fav_pro_idx);
	
		service.favoriteDelete(fpi);
		
		
		return "product/favoriteRead";
	}
}

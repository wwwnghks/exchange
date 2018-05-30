package com.javamuk.favorite.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javamuk.domain.Favorite_Product;
import com.javamuk.domain.Member;
import com.javamuk.favorite.service.FavoriteCreateService;
import com.javamuk.favorite.service.FavoriteReadService;

@Controller
public class FavoriteCreateController {

	@Inject
	private FavoriteCreateService createservice;
	
	@Inject
	private FavoriteReadService readservice;

	@RequestMapping(value = "/product/favoriteProduct", method = RequestMethod.GET)
	public String favoriteCreate(Favorite_Product favorite_Product, HttpSession session,Model model) {
		Member session_Member = (Member) session.getAttribute("session_member");
		
		if (session_Member != null) {
			favorite_Product.setMem_idx(session_Member.getMem_idx());
			
		}else {
			return "member/goLogin";
		}
		Favorite_Product result_product = readservice.readOneSelect(favorite_Product);
		if(result_product==null) {
			createservice.favoriteCreate(favorite_Product);
			model.addAttribute("result", "관심상품으로 등록하였습니다.");
			return "product/resultFavorite";
		}else {
			model.addAttribute("result", "이미 등록된 상품입니다.");
			return "product/resultFavorite";
			
		}
		
	}
}
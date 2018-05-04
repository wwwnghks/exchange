package com.javamuk.product.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.jca.work.WorkManagerTaskExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Favorite_Product;
import com.javamuk.domain.Member;
import com.javamuk.product.service.FavoriteReadService;

@Controller
public class FavoriteReadController {

	@Inject
	private FavoriteReadService readservice;

	@RequestMapping(value = "/product/favoriteRead", method = RequestMethod.GET)
	public String favoriteProductRead(HttpSession session,Model model) {
		Member owner_member = (Member) session.getAttribute("session_member");

		List<Favorite_Product> favorite_list=readservice.favoriteProductAll(owner_member);
		model.addAttribute("favorite_list", favorite_list);
		return "product/favoriteRead";
	}
}
package com.javamuk.trade.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Trade;
import com.javamuk.product.service.MyProductReadService;
import com.javamuk.trade.service.TradeCreateService;

@Controller
public class TradeCreateController {

	@Inject
	TradeCreateService service;
	
	@Inject
	MyProductReadService pro_service;
	
	@RequestMapping(value="/trade/tradeCreate", method=RequestMethod.GET)
	public String createForm(@RequestParam("oppro_idx") int oppro_idx,HttpSession session,Model model) {

		Member session_member = (Member) session.getAttribute("session_member");
		List<Product> myProduct = pro_service.myProductAll(session_member);
		model.addAttribute("oppro_idx", oppro_idx);
		model.addAttribute("myProduct", myProduct);
		return "trade/tradeCreate";
	}
	
	@RequestMapping(value="/trade/tradeCreate", method=RequestMethod.POST)
	public String createFormPOST(Trade trade) {
		trade.setTra_mystatus("신청중");
		trade.setTra_opstatus("신청중");
		int result = service.tradeCreate(trade);
		return "trade/tradeCreated";
	}
}

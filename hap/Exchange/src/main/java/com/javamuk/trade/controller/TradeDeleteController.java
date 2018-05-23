package com.javamuk.trade.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Trade;
import com.javamuk.product.service.MyProductReadService;
import com.javamuk.trade.service.TradeCreateService;
import com.javamuk.trade.service.TradeDeleteService;

@Controller
public class TradeDeleteController {

	@Inject
	TradeDeleteService service;
	
/*	@RequestMapping(value="/trade/tradeDelete", method=RequestMethod.GET)
	@ResponseBody
	public int tradeDelete(Trade trade) {

		return service.tradeDelete(trade);
	}*/
	
	@RequestMapping(value="/trade/tradeDelete", method=RequestMethod.GET)
	public String tradeDelete(Trade trade) {
		service.tradeDelete(trade);
		return "trade/tradeDelete";
	}

}

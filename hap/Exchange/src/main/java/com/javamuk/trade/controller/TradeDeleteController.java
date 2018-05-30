package com.javamuk.trade.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Trade;
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

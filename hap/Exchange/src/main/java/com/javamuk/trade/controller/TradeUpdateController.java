package com.javamuk.trade.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Trade;
import com.javamuk.trade.service.TradeUpdateService;

@Controller
public class TradeUpdateController {

	@Inject
	TradeUpdateService service;

	@RequestMapping(value="/trade/tradeOK", method=RequestMethod.GET)
	public String tradeOK(Trade trade) {
		trade.setTra_mystatus("거래중");
		trade.setTra_opstatus("거래중");
		int result = service.tradeOK(trade);
		return "trade/tradeOK";
	}
	
	@RequestMapping(value="/trade/tradeNO", method=RequestMethod.GET)
	public String tradeNO(Trade trade) {
		trade.setTra_mystatus("거절");
		trade.setTra_opstatus("거절");
		int result = service.tradeOK(trade);
		return "trade/tradeNO";
	}
	
	@RequestMapping(value="/trade/mytradefinish", method=RequestMethod.GET)
	public String mytradefinish(Trade trade) {
		trade.setTra_mystatus("거래완료");
		int result = service.mytradefinish(trade);
		return "trade/tradefinish";
	}
	
	@RequestMapping(value="/trade/optradefinish", method=RequestMethod.GET)
	public String optradefinish(Trade trade) {
		trade.setTra_opstatus("거래완료");
		int result = service.optradefinish(trade);
		return "trade/tradefinish";
	}
	
	
	

}

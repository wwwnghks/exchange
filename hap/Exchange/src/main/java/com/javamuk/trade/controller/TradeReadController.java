package com.javamuk.trade.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.domain.Trade;
import com.javamuk.trade.service.TradeReadService;

@Controller
public class TradeReadController {

	@Inject
	TradeReadService service;

	@RequestMapping(value="/trade/tradeRead", method=RequestMethod.GET)
	public String createForm(HttpSession session,Model model) {

		Member session_member = (Member) session.getAttribute("session_member");
		List<Trade> mytrade = service.myTrade(session_member);
		List<Trade> optrade = service.opTrade(session_member);
		model.addAttribute("mytrade", mytrade);
		model.addAttribute("optrade", optrade);
		return "trade/tradeRead";
	}

}

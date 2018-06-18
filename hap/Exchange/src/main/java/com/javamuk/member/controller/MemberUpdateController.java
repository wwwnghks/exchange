package com.javamuk.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Trade;
import com.javamuk.member.service.MemberReadService;
import com.javamuk.member.service.MemberUpdateService;
import com.javamuk.trade.service.TradeUpdateService;

@Controller
public class MemberUpdateController {

	@Inject
	private MemberUpdateService service;
	
	@Inject
	private MemberReadService readservice;
	
	@Inject
	private TradeUpdateService tradeupdateservice;
	
	@RequestMapping("/member/getmemberScore")
	public String getmemberScore(Member member,Product product,Trade trade) {
		Member scoreMember = readservice.ownerRead(product);
		scoreMember.setMem_score(member.getMem_score());
		int result = service.scoreUpdate(scoreMember);
		trade.setTra_opstatus("거래종료");
		tradeupdateservice.optradefinish(trade);
		return "trade/tradescore";
	}
	
	@RequestMapping("/member/sendmemberScore")
	public String sendmemberScore(Member member,Product product,Trade trade) {
		Member scoreMember = readservice.ownerRead(product);
		scoreMember.setMem_score(member.getMem_score());
		int result = service.scoreUpdate(scoreMember);
		trade.setTra_mystatus("거래종료");
		tradeupdateservice.mytradefinish(trade);
		return "trade/tradescore";
	}
	
}

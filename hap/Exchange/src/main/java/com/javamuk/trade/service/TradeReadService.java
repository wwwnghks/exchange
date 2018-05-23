package com.javamuk.trade.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.domain.Trade;
import com.javamuk.trade.dao.TradeReadDAO;

@Service
public class TradeReadService {

	@Inject
	TradeReadDAO dao;

	public List<Trade> myTrade(Member session_member) {
		// TODO Auto-generated method stub
		return dao.myTrade(session_member);
	}

	public List<Trade> opTrade(Member session_member) {
		// TODO Auto-generated method stub
		return dao.opTrade(session_member);
	}
	
}

package com.javamuk.trade.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Trade;
import com.javamuk.trade.dao.TradeCreateDAO;

@Service
public class TradeCreateService {

	@Inject
	TradeCreateDAO dao;

	public int tradeCreate(Trade trade) {
		// TODO Auto-generated method stub
		return dao.tradeCreate(trade);
	}

	
}

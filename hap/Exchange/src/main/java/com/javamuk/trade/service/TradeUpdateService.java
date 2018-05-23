package com.javamuk.trade.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Trade;
import com.javamuk.trade.dao.TradeUpdateDAO;

@Service
public class TradeUpdateService {
	
	@Inject
	private TradeUpdateDAO dao;

	public int tradeOK(Trade trade) {
		// TODO Auto-generated method stub
		return dao.tradeOK(trade);
	}


	public int mytradefinish(Trade trade) {
		// TODO Auto-generated method stub
		return dao.mytradefinish(trade);
	}


	public int optradefinish(Trade trade) {
		// TODO Auto-generated method stub
		return dao.optradefinish(trade);
	}
	

}

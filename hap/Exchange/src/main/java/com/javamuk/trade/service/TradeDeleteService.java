package com.javamuk.trade.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Trade;
import com.javamuk.trade.dao.TradeDeleteDAO;

@Service
public class TradeDeleteService {

	@Inject
	private TradeDeleteDAO dao;

	public int tradeDelete(Trade trade) {
		// TODO Auto-generated method stub
		return dao.tradeDelete(trade);
	}
}

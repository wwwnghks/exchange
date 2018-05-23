package com.javamuk.trade.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Trade;

@Repository
public class TradeDeleteDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.TradeMapper";

	public int tradeDelete(Trade trade) {
		// TODO Auto-generated method stub
		return session.delete(namespace+".tradedelete", trade);
	}
	
}

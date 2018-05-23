package com.javamuk.trade.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Trade;

@Repository
public class TradeUpdateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.TradeMapper";

	public int tradeOK(Trade trade) {
		// TODO Auto-generated method stub
		return session.update(namespace+".tradeokupdate", trade);
	}

	public int mytradefinish(Trade trade) {
		// TODO Auto-generated method stub
		return session.update(namespace+".mytradefinish",trade);
	}

	public int optradefinish(Trade trade) {
		// TODO Auto-generated method stub
		return session.update(namespace+".optradefinish",trade);
	}
	

}

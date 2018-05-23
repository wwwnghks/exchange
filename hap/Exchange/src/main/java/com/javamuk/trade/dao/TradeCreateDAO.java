package com.javamuk.trade.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Trade;

@Repository
public class TradeCreateDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.TradeMapper";
	
	public int tradeCreate(Trade trade) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".tradecreate", trade);
	}
	
}

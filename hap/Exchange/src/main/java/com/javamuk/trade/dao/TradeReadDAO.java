package com.javamuk.trade.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;
import com.javamuk.domain.Trade;

@Repository
public class TradeReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.TradeMapper";

	public List<Trade> myTrade(Member session_member) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".mytraderead", session_member);
	}

	public List<Trade> opTrade(Member session_member) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".optraderead", session_member);
	}
	
}

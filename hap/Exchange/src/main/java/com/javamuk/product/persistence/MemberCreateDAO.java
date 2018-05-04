package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;

@Repository
public class MemberCreateDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace="com.javamuk.mapper.memberMapper";
	
	public int createMember(Member member) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".createMember", member);
	}


	
	

}

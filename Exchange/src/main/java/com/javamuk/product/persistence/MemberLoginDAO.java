package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;

@Repository
public class MemberLoginDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.memberMapper";
	
	public Member loginMember(Member login_member) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".loginMember", login_member);
		
	}

}

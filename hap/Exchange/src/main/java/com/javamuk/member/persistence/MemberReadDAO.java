package com.javamuk.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;

@Repository
public class MemberReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.memberMapper";

	public int id_check(Member ajax_member) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".idCheck", ajax_member);
	}

	public int nick_check(Member ajax_member) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".nickCheck", ajax_member);
	}

	public Member ownerRead(Product product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".ownerread", product);
	}
	
	
}
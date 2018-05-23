package com.javamuk.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;

@Repository
public class MemberUpdateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.memberMapper";

	public int scoreUpdate(Member member) {
		// TODO Auto-generated method stub
		return session.update(namespace+".scoreupdate", member);
	}
	

}

package com.javamuk.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;

@Repository
public class MyinfoUpdateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.memberMapper";
	
	public int pwc_check(Member member) {
		return session.selectOne(namespace+".pwcCheck",member);
	}
	
	public int pw_check(Member member) {
		return session.selectOne(namespace+".pwCheck",member);
	}
	
	public int updateMember(Member member) {
		return session.update(namespace+".updateMember",member);
	}
	
	public int updateMemberTwo(Member member) {
		return session.update(namespace+".updateMemberTwo",member);
	}

}

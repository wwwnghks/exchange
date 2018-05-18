package com.javamuk.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Manager;
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
	
	public Manager loginManager(Manager manager) {
		return session.selectOne(namespace+ ".loginManager", manager);

	}
	
	public int createNaverMember(Member naverMember) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".createNaverMember", naverMember);
	}

	public int createCacaoMember(Member cacaoMember) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".createCacaoMember", cacaoMember);
	}

}

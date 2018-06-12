package com.javamuk.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;

@Repository
public class MyinfoDeleteDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.memberMapper";
	
	public int deleteMember(Member member) {
		
		System.out.println("!dao!");
		System.out.println(member);
		return session.delete(namespace+".deleteMember",member);
	}

}

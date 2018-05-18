package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MemberLoginDAO;

@Service
public class MemberLoginService {
	
	@Inject
	private MemberLoginDAO dao;

	public Member loginMember(Member login_member) {
		// TODO Auto-generated method stub
		
		return dao.loginMember(login_member);
	}
	
	public Manager loginManager(Manager manager) {
		// TODO Auto-generated method stub
		
		return dao.loginManager(manager);
	}
	
	public int createNaverMember(Member naverMember) {
		// TODO Auto-generated method stub
		return dao.createNaverMember(naverMember);
	}

	public int createCacaoMember(Member cacaoMember) {
		// TODO Auto-generated method stub
		return dao.createCacaoMember(cacaoMember);
	}

}

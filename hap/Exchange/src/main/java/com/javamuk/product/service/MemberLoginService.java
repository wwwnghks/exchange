package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.product.persistence.MemberLoginDAO;

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

}

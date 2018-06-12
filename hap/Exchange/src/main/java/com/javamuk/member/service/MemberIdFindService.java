package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MemberReadDAO;

@Service
public class MemberIdFindService {
	
	@Inject
	private MemberReadDAO dao;
	
	public Member memberIdFind(Member member) {
		
		 
		return dao.IdFind(member);
	}
	
}

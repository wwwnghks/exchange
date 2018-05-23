package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MemberUpdateDAO;

@Service
public class MemberUpdateService {

	
	@Inject
	private MemberUpdateDAO dao;

	public int scoreUpdate(Member member) {
		// TODO Auto-generated method stub
		return dao.scoreUpdate(member);
	}
}

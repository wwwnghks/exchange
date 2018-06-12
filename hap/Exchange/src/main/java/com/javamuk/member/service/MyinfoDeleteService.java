package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MyinfoDeleteDAO;

@Service
public class MyinfoDeleteService {
	
	@Inject
	public MyinfoDeleteDAO dao;
	
	public int deleteMember(Member member) {
		
		System.out.println("!service!");
		System.out.println(member);
		
		int result = dao.deleteMember(member);
		return result;
	}

}

package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.product.persistence.MemberReadDAO;

@Service
public class MemberReadService {

	@Inject
	private MemberReadDAO dao;

	public int id_check(Member ajax_member) {
		// TODO Auto-generated method stub
		return dao.id_check(ajax_member);
	}

	public int nick_check(Member ajax_member) {
		// TODO Auto-generated method stub
		return dao.nick_check(ajax_member);
	}
	
	
}
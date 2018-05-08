package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Follow;
import com.javamuk.product.persistence.FollowDeleteDAO;

@Service
public class FollowDeleteService {
	
	@Inject
	private FollowDeleteDAO dao;

	public int follow_delete(Follow follow) {
		// TODO Auto-generated method stub
		return dao.follow_delete(follow);
	}

	
}

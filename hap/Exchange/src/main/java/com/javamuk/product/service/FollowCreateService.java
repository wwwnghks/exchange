package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Follow;
import com.javamuk.product.persistence.FollowCreateDAO;

@Service
public class FollowCreateService {
	
	@Inject
	private FollowCreateDAO dao;

	public int follow_create(Follow follow) {
		// TODO Auto-generated method stub
		return dao.follow_create(follow);
	}
	
}
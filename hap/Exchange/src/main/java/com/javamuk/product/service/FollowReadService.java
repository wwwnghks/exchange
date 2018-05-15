package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Follow;
import com.javamuk.domain.Product;
import com.javamuk.product.persistence.FollowReadDAO;

@Service
public class FollowReadService {
	
	@Inject
	private FollowReadDAO dao;

	public Follow follow_current(Follow follow) {
		// TODO Auto-generated method stub
		return dao.follow_current(follow);
	}

	public List<Follow> follow_all(Follow follow) {
		// TODO Auto-generated method stub
		return dao.follow_all(follow);
	}

	public List<Product> follwer_read(Product follower) {
		// TODO Auto-generated method stub
		return dao.follower_read(follower);
	}
	
}
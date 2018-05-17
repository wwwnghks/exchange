package com.javamuk.follow.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Follow;
import com.javamuk.domain.Product;

@Repository
public class FollowReadDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.FollowMapper";

	public Follow follow_current(Follow follow) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".follow_read", follow);
	}

	public List<Follow> follow_all(Follow follow) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".follow_all", follow);
	}

	public List<Product> follower_read(Product follower) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".follower_read", follower);
	}
}
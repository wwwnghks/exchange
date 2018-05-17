package com.javamuk.follow.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Follow;

@Repository
public class FollowCreateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.FollowMapper";

	public int follow_create(Follow follow) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".follow_create", follow);
	}
}
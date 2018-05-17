package com.javamuk.follow.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Follow;

@Repository
public class FollowDeleteDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.FollowMapper";

	public int follow_delete(Follow follow) {
		// TODO Auto-generated method stub
		return session.delete(namespace+".follow_delete", follow);
	}

	public void followDelete(HashMap<String, Object> fi) {
		// TODO Auto-generated method stub
		session.delete(namespace+".followDelete_idx", fi);
	}

}
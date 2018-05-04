package com.javamuk.product.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FavoriteDeleteDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace= "com.javamuk.mapper.FavoriteProductMapper";
	
	public void favoriteDelete(HashMap<String, Object> fpi) {
		// TODO Auto-generated method stub
		session.delete(namespace+".favoriteDelete", fpi);
	}
	

}
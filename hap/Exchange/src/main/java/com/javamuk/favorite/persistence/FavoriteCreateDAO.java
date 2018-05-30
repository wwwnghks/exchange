package com.javamuk.favorite.persistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.javamuk.domain.Favorite_Product;

@Repository
public class FavoriteCreateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.FavoriteProductMapper";

	public int favoriteCreate(Favorite_Product favorite_Product) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".favoriteCreate", favorite_Product);
	}

}
package com.javamuk.favorite.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.javamuk.domain.Favorite_Product;
import com.javamuk.domain.Member;

@Repository
public class FavoriteReadDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.FavoriteProductMapper";

	public Favorite_Product readOneSelect(Favorite_Product favorite_Product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readOneSelect", favorite_Product);
	}

	public List<Favorite_Product> favoriteProductAll(Member owner_member) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readAllSelect", owner_member);
	}

}
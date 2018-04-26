package com.javamuk.product.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.First_Category;
import com.javamuk.domain.Second_Category;

@Repository
public class ProductCreateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.ProductMapper";

	public List<First_Category> readFirst_category() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectFirstCategory");
	}

	public List<Second_Category> readSecond_category(First_Category first_Category) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectSecondCategory",first_Category);
	}
	

}

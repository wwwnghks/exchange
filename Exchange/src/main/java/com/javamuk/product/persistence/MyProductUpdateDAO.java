package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Product;

@Repository
public class MyProductUpdateDAO {

	
	@Inject
	private SqlSession session;

	private static String namespace= "com.javamuk.mapper.MyProductMapper";
	
	public void myProductUpdate(Product product) {
		// TODO Auto-generated method stub
		session.update(namespace+".updateMyProduct", product);
	}
	
	
}

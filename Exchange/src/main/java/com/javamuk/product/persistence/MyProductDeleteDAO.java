package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Product;

@Repository
public class MyProductDeleteDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.MyProductMapper";

	public void myProductDelete(Product product) {
		// TODO Auto-generated method stub
		session.delete(namespace+".myProductDelete", product);
	}
	
	

}

package com.javamuk.product.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;

@Repository
public class MyProductReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.MyProductMapper";
	
	public List<Product> myProductAll(Member member) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectProductAll",member);
	}

	public Product myProductOne(Product product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectProductOne",product);
	}

	public Member ownerMember(Product product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectOwner", product);
	}

	public List<Product> locationProduct(Product location_product) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".locationProduct", location_product);
	}

	public List<Product> productSearch(Product product) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".searchProduct", product);
	}
	
	
	
}
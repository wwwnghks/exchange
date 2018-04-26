package com.javamuk.product.persistence;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Product_Reply;

@Repository
public class ProductReplyReadDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.ProductReplyMapper";
	
	public List<Product_Reply> readReply() {
		
		List<Product_Reply> list = session.selectList(namespace+".selectProductAll");
		return list;
		// TODO Auto-generated method stub
	}

}

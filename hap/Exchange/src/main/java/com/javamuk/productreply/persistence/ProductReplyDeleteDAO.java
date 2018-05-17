package com.javamuk.productreply.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Product_Reply;

@Repository
public class ProductReplyDeleteDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.ProductReplyMapper";

	public int deleteReply(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		return session.delete(namespace+".deleteProductReply", product_Reply);
	}
}
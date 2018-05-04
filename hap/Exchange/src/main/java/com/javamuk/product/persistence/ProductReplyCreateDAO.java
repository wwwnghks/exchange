package com.javamuk.product.persistence;


import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.javamuk.domain.Product_Reply;

@Repository
public class ProductReplyCreateDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.ProductReplyMapper";
	
	public int createReply(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".insertProductReply",product_Reply);
	}

	public int createReWrite(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		int result = session.update(namespace+".updateProductReWrite",product_Reply);
		return session.insert(namespace+".insertProductReWrite",product_Reply);
	}


}
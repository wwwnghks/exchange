package com.javamuk.productreply.service;


import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.javamuk.domain.Product_Reply;
import com.javamuk.productreply.persistence.ProductReplyCreateDAO;

@Service
public class ProductReplyCreateService {

	@Inject
	private ProductReplyCreateDAO dao;
	
	public int createReply(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		return dao.createReply(product_Reply);
	}

	public int createReWrite(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		return dao.createReWrite(product_Reply);
	
	}



}

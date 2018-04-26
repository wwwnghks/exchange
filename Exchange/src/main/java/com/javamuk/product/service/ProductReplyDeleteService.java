package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Product_Reply;
import com.javamuk.product.persistence.ProductReplyDeleteDAO;

@Service
public class ProductReplyDeleteService {

	@Inject
	private ProductReplyDeleteDAO dao;
	
	public int deleteReply(Product_Reply product_Reply) {
		// TODO Auto-generated method stub
		return dao.deleteReply(product_Reply);
		
	}

}

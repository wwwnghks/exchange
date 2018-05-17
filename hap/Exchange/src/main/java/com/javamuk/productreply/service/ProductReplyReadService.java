package com.javamuk.productreply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Product;
import com.javamuk.domain.Product_Reply;
import com.javamuk.productreply.persistence.ProductReplyReadDAO;

@Service
public class ProductReplyReadService {
	
	@Inject
	private ProductReplyReadDAO dao;

	public List<Product_Reply> readReply(Product product) {
		// TODO Auto-generated method stub
		return dao.readReply(product);
	}


}
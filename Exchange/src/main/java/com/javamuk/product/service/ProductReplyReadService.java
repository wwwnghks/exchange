package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Product_Reply;
import com.javamuk.product.persistence.ProductReplyReadDAO;

@Service
public class ProductReplyReadService {
	
	@Inject
	private ProductReplyReadDAO dao;

	public List<Product_Reply> readReply() {
		// TODO Auto-generated method stub
		return dao.readReply();
	}


}

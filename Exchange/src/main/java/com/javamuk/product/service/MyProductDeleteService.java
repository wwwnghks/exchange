package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Product;
import com.javamuk.product.persistence.MyProductDeleteDAO;

@Service
public class MyProductDeleteService {

	@Inject
	private MyProductDeleteDAO dao;
	
	public void myProductDelete(Product product) {
		// TODO Auto-generated method stub
		dao.myProductDelete(product);
	}

}

package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.product.persistence.MyProductReadDAO;

@Service
public class MyProductReadService {

	@Inject
	private MyProductReadDAO dao;
	
	public List<Product> myProductAll(Member member) {
		// TODO Auto-generated method stub
		return dao.myProductAll(member);
	}

	public Product myProductOne(Product product) {
		// TODO Auto-generated method stub
		return dao.myProductOne(product);
	}

	public Member ownerMember(Product product) {
		// TODO Auto-generated method stub
		return dao.ownerMember(product);
	}

	public List<Product> locationProduct(Product location_product) {
		// TODO Auto-generated method stub
		return dao.locationProduct(location_product);
	}

	public List<Product> productSearch(Product product) {
		// TODO Auto-generated method stub
		return dao.productSearch(product);
	}

}

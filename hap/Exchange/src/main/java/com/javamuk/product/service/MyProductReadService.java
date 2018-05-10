package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;
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

	public List<Product> productReadAll() {
		// TODO Auto-generated method stub
		return dao.productReadAll();
	}

	public List<Product> tagSearch(Product product) {
		// TODO Auto-generated method stub
		return dao.tagSearch(product);
	}

	public List<Product> menuProduct(Product menu_product) {
		// TODO Auto-generated method stub
		return dao.menuProduct(menu_product);
	}

	public List<Product> fir_search(First_Category fir) {
		// TODO Auto-generated method stub
		return dao.fir_search(fir);
	}

	public List<Product> sec_search(Second_Category sec) {
		// TODO Auto-generated method stub
		return dao.sec_search(sec);
	}

	public List<Product> bra_search(Brand bra) {
		// TODO Auto-generated method stub
		return dao.bra_search(bra);
	}

}
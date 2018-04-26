package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Second_Category;
import com.javamuk.product.persistence.ProductCreateDAO;

@Service
public class ProductCreateService {

	@Inject
	private ProductCreateDAO dao;

	public List<First_Category> readFirst_category() {
		// TODO Auto-generated method stub
		return dao.readFirst_category();
	}

	public List<Second_Category> readSecond_category(First_Category first_Category) {
		// TODO Auto-generated method stub
		return dao.readSecond_category(first_Category);
	}


	public List<Brand> readBrand(Second_Category second_Category) {
		// TODO Auto-generated method stub
		return dao.readBrand(second_Category);
	}

}

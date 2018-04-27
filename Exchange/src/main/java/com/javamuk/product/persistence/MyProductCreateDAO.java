package com.javamuk.product.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;

@Repository
public class MyProductCreateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.CreateProductMapper";

	public List<First_Category> readFirst_category() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectFirstCategory");
	}

	public List<Second_Category> readSecond_category(First_Category first_Category) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectSecondCategory",first_Category);
	}


	public List<Brand> readBrand(Second_Category second_Category) {
		// TODO Auto-generated method stub

		return session.selectList(namespace+".selectBrandCategory", second_Category);
	}

	public int createBrand(Brand brand) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".insertBrand", brand);
	}

	public Brand searchBrand(Brand brand) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".brandSearch",brand);
	}

	public List<Brand> brandSelect(Brand brand) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".brandSelect", brand);
	}

	public int createProduct(Product product) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".createProduct", product);
	}



}

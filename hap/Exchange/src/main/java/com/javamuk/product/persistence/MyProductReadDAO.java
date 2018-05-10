package com.javamuk.product.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;

@Repository
public class MyProductReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace= "com.javamuk.mapper.MyProductMapper";
	
	public List<Product> myProductAll(Member member) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectProductAll",member);
	}

	public Product myProductOne(Product product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectProductOne",product);
	}

	public Member ownerMember(Product product) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectOwner", product);
	}

	public List<Product> locationProduct(Product location_product) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".locationProduct", location_product);
	}

	public List<Product> productSearch(Product product) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".searchProduct", product);
	}

	public List<Product> productReadAll() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".productReadAll");
	}

	public List<Product> tagSearch(Product product) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".tagSearch", product);
	}

	public List<Product> menuProduct(Product menu_product) {
      // TODO Auto-generated method stub
      return session.selectList(namespace+".menuProduct", menu_product);
   }

	public List<Product> fir_search(First_Category fir) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".firSearch", fir);
	}

	public List<Product> sec_search(Second_Category sec) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".secSearch", sec);
	}

	public List<Product> bra_search(Brand bra) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".braSearch", bra);
	}
	
	
	
}
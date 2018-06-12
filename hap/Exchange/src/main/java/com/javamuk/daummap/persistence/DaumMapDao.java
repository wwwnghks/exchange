package com.javamuk.daummap.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Product;



@Repository
public class DaumMapDao {

	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.daumMapMapper";
	
	public Product daumMap(Product product) {
		return session.selectOne(namespace+".daumMapMap", product);
	}
	
	

	

}

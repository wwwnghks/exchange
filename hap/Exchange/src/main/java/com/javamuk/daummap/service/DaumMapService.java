package com.javamuk.daummap.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javamuk.daummap.persistence.DaumMapDao;
import com.javamuk.domain.Declaration;
import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.domain.Product;


@Service
public class DaumMapService {

	@Inject
	private DaumMapDao dao;
	
	public Product DaumMap(Product product) {
		return dao.daumMap(product);
	}

	
}
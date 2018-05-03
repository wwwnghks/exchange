package com.javamuk.product.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.product.persistence.FavoriteDeleteDAO;

@Service
public class FavoriteDeleteService {
	
	@Inject
	private FavoriteDeleteDAO dao;

	public void favoriteDelete(HashMap<String, Object> fpi) {
		// TODO Auto-generated method stub
		dao.favoriteDelete(fpi);
	}
	

}

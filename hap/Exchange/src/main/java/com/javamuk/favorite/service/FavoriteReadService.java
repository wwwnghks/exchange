package com.javamuk.favorite.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Favorite_Product;
import com.javamuk.domain.Member;
import com.javamuk.favorite.persistence.FavoriteReadDAO;

@Service
public class FavoriteReadService {
	
	@Inject
	private FavoriteReadDAO dao;

	public Favorite_Product readOneSelect(Favorite_Product favorite_Product) {
		// TODO Auto-generated method stub
		return dao.readOneSelect(favorite_Product);
	}

	public List<Favorite_Product> favoriteProductAll(Member owner_member) {
		// TODO Auto-generated method stub
		return dao.favoriteProductAll(owner_member);
	}

}
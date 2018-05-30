package com.javamuk.favorite.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.javamuk.domain.Favorite_Product;
import com.javamuk.favorite.persistence.FavoriteCreateDAO;

@Service
public class FavoriteCreateService {
	
	@Inject
	private FavoriteCreateDAO dao;

	public int favoriteCreate(Favorite_Product favorite_Product) {
		// TODO Auto-generated method stub
		return dao.favoriteCreate(favorite_Product);
	}	

}

package com.javamuk.product.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Brand;
import com.javamuk.domain.First_Category;
import com.javamuk.domain.Product;
import com.javamuk.domain.Second_Category;
import com.javamuk.product.persistence.MyProductCreateDAO;

@Service
public class MyProductCreateService {

	@Inject
	private MyProductCreateDAO dao;

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

	public int createBrand(Brand brand) {
		// TODO Auto-generated method stub
		if(dao.searchBrand(brand)==null) {
			return dao.createBrand(brand);
		}else {
			return 0;
		}
	}

	public List<Brand> brandSelect(Brand brand) {
		// TODO Auto-generated method stub
		return dao.brandSelect(brand);
	}

	public int createProduct(Product product, HttpServletRequest request) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		
		String uploadURI = "/uploadfile/memberproduct";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		if (!product.getPhotofile01().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = product.getMem_idx()+"_" +System.currentTimeMillis() + "_01_" + product.getPhotofile01().getOriginalFilename();
			product.getPhotofile01().transferTo(new File(dir, fileName));
			product.setPro_photo_01(fileName);
		}
		if (!product.getPhotofile02().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = product.getMem_idx()+"_" +System.currentTimeMillis() + "_02_" + product.getPhotofile02().getOriginalFilename();
			product.getPhotofile02().transferTo(new File(dir, fileName));
			product.setPro_photo_02(fileName);
		}
		if (!product.getPhotofile03().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = product.getMem_idx()+"_" +System.currentTimeMillis() + "_03_" + product.getPhotofile03().getOriginalFilename();
			product.getPhotofile03().transferTo(new File(dir, fileName));
			product.setPro_photo_03(fileName);
		}

		return dao.createProduct(product);
	}



}

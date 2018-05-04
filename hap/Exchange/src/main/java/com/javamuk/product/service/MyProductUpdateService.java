package com.javamuk.product.service;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Product;
import com.javamuk.product.persistence.MyProductUpdateDAO;

@Service
public class MyProductUpdateService {

	@Inject
	private MyProductUpdateDAO dao;
	
	public void myProductUpdate(Product product, HttpServletRequest request) throws IllegalStateException, IOException {
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
		
		dao.myProductUpdate(product);
		
	}

}
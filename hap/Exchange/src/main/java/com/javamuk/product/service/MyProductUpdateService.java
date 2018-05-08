package com.javamuk.product.service;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
			String fileName = product.getMem_idx() + "_" + System.currentTimeMillis() + "_01_"
					+ product.getPhotofile01().getOriginalFilename();
			product.getPhotofile01().transferTo(new File(dir, fileName));
			product.setPro_photo_01(fileName);
		}
		if (!product.getPhotofile02().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = product.getMem_idx() + "_" + System.currentTimeMillis() + "_02_"
					+ product.getPhotofile02().getOriginalFilename();
			product.getPhotofile02().transferTo(new File(dir, fileName));
			product.setPro_photo_02(fileName);
		}
		if (!product.getPhotofile03().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = product.getMem_idx() + "_" + System.currentTimeMillis() + "_03_"
					+ product.getPhotofile03().getOriginalFilename();
			product.getPhotofile03().transferTo(new File(dir, fileName));
			product.setPro_photo_03(fileName);
		}

		dao.myProductUpdate(product);

	}

	public void updateCnt(Product product, HttpSession session) {
		// TODO Auto-generated method stub
		long update_time = 0;
		if (session.getAttribute("update_time_" + product.getPro_idx()) != null) {
			// 세션에서 읽어오기
			update_time = (long) session.getAttribute("update_time_" + product.getPro_idx());
		}
		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		// 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		// 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if (current_time - update_time >  24*60*60*1000) {
			dao.updateCnt(product);
			// 세션에 시간을 저장 : "update_time_"+bno는 다른변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time_" + product.getPro_idx(), current_time);

		}
		
	}

}
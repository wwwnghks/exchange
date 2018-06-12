package com.javamuk.member.service;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MyinfoUpdateDAO;

@Service
public class MyinfoUpdateService {
	
	@Inject
	public MyinfoUpdateDAO dao;
	
	public int pwc_check(Member member) {
		return dao.pwc_check(member);
	}
	
	public int pw_check(Member member) {
		return dao.pw_check(member);
	}
	
	public int updateMember(Member member,HttpServletRequest request) throws IllegalStateException, IOException {
		
		String uploadURI = "/uploadfile/memberphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		if (!member.getPhotofile().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = member.getMem_id() + "_" + member.getPhotofile().getOriginalFilename();
			member.getPhotofile().transferTo(new File(dir, fileName));
			member.setMem_photo(fileName);
		}
		
		String fullAddress= member.getAddress_01()+ " " +member.getAddress_02() + " , " + member.getAddress_post();
		member.setMem_address(fullAddress);
		
		
		int result = dao.updateMember(member);
		return result;
	}
	
	public int updateMemberTwo(Member member,HttpServletRequest request) throws IllegalStateException, IOException {
		
		String uploadURI = "/uploadfile/memberphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		if (!member.getPhotofile().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = member.getMem_id() + "_" + member.getPhotofile().getOriginalFilename();
			member.getPhotofile().transferTo(new File(dir, fileName));
			member.setMem_photo(fileName);
		}
		
		String fullAddress= member.getAddress_01()+ " " +member.getAddress_02() + " , " + member.getAddress_post();
		member.setMem_address(fullAddress);
		
		int resultTwo = dao.updateMemberTwo(member);
		return resultTwo;
	}
	
}

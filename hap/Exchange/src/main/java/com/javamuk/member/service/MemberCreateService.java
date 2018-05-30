package com.javamuk.member.service;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MemberCreateDAO;

@Service
public class MemberCreateService {

	@Inject
	private MemberCreateDAO dao;
	
	public int createMember(Member member,HttpServletRequest request) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		
		String uploadURI = "/uploadfile/memberphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		if (!member.getPhotofile().isEmpty()) {
			// 새로운 파일 이름 생성 -> 파일 저장 -> DB에 저장할 파일이름 set
			String fileName = member.getMem_id() + "_" + member.getPhotofile().getOriginalFilename();
			member.getPhotofile().transferTo(new File(dir, fileName));
			member.setMem_photo(fileName);
		}

		String s_birth = member.getMem_birth1()+"-"+member.getMem_birth2()+"-"+member.getMem_birth3();
		java.sql.Date d_birth = java.sql.Date.valueOf(s_birth);
		member.setMem_birth(d_birth);
		
		String fullAddress= member.getAddress_01()+ " " +member.getAddress_02() + " , " + member.getAddress_post();
		member.setMem_address(fullAddress);
		int result = dao.createMember(member);
		return result;
		
	}

	
	
	

}

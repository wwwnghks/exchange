package com.javamuk.member.service;

import java.io.IOException;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;
import com.javamuk.member.persistence.MemberReadDAO;

@Service
public class MemberPwFindService {

	@Inject
	private MemberReadDAO dao;

	public int memberPwFind(Member member) {

		return dao.PwFind(member);
	}

	

	public static void main(String[] args) throws IOException {
		System.out.println(getRamdomPassword(8));
	}

	public static String getRamdomPassword(int len) {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
		int idx = 0;
		StringBuffer sb = new StringBuffer();
		System.out.println("charSet.length :::: " + charSet.length);
		for (int i = 0; i < len; i++) {
			idx = (int) (charSet.length * Math.random());
			
			sb.append(charSet[idx]);
		}
						
		return sb.toString();
	}

}

package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Declaration;
import com.javamuk.product.persistence.DeclarationCreateDAO;

@Service
public class DeclarationCreateService {

	@Inject
	private DeclarationCreateDAO dao;

	public int createDeclaration(Declaration declaration) {
		int resultCnt = dao.createDeclaration(declaration);
		return resultCnt;
	}
}

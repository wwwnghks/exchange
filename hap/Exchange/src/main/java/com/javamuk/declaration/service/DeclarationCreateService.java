package com.javamuk.declaration.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.declaration.persistence.DeclarationCreateDAO;
import com.javamuk.domain.Declaration;

@Service
public class DeclarationCreateService {

	@Inject
	private DeclarationCreateDAO dao;

	public int createDeclaration(Declaration declaration) {
		int resultCnt = dao.createDeclaration(declaration);
		return resultCnt;
	}
}

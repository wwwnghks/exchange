package com.javamuk.declaration.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Declaration;

@Repository
public class DeclarationCreateDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.declarationMapper";
	
	public int createDeclaration(Declaration declaration) {
		return session.insert(namespace+".createDeclaration",declaration);
	}
}

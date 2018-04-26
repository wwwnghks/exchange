package com.javamuk.exchange;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/exchange?useSSL=false&amp;characterEncoding=utf8";

	private static final String USER = "root";
	private static final String PASS = "apmsetup";

	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PASS);
			System.out.println(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package com.mannajob.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}
	
//	@Test
	public void testConnection() {
		try(Connection conn = 
				DriverManager.getConnection(
						"jdbc:oracle:thin:@192.168.1.100:1521:orcl",
						"mannajob",
						"ateam")) {
			log.info(conn);
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}
}

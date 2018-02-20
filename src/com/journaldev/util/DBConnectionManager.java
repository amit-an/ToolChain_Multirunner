package com.journaldev.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class DBConnectionManager {

	private Connection connection;

	public DBConnectionManager(String dbURL, String user, String pwd) throws ClassNotFoundException, SQLException{
		Class.forName("org.postgresql.Driver");
		this.connection = DriverManager.getConnection(dbURL, user, pwd);
	}

	public Connection getConnection(){
		return this.connection;
	}

	public static Connection getConnection(ServletContext ctx){
		//initialize DB Connection
		DBConnectionManager connectionManager = null;
		String dbURL = ctx.getInitParameter("dbURL");
		String user = ctx.getInitParameter("dbUser");
		String pwd = ctx.getInitParameter("dbPassword");

		if ( System.getenv("JDBC_URL") != null ) {
			System.out.println(" original JDBC URL ="+dbURL);
			dbURL = System.getenv("JDBC_URL");
			dbURL = dbURL.replace("\"","");
			System.out.println(" URL read from env variable ="+dbURL);
		}
    	try {
			connectionManager = new DBConnectionManager(dbURL, user, pwd);
			ctx.setAttribute("DBConnection", connectionManager.getConnection());
			System.out.println("DB Connection initialized successfully.");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return connectionManager.getConnection();

	}

}

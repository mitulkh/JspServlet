package com.registration.provider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnection {

	public static Connection connect() throws SQLException, ClassNotFoundException {
		String url = "jdbc:mysql://localhost:3306/employees";
		String username = "root";
		String password = "MYSQL@Mit@0078";
		Class.forName("com.mysql.jdbc.Driver");
		Connection connect = DriverManager.getConnection(url, username, password);
		return connect;
	}

}
package com.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.registration.model.Employee;
import com.registration.provider.MysqlConnection;

public class EmployeeDao {

	public int registerEmployee(Employee employee) throws ClassNotFoundException {
		try {
			Connection connection = MysqlConnection.connect();
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO employee"
					+ "(firstname, lastname, username, password, address, contact) VALUES (?, ?, ?, ?, ?, ?);");
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUserName());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getContactNo());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return 0;
	}

}

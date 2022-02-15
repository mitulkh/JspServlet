package com.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.registration.model.Employee;
import com.registration.provider.MysqlConnection;

public class EmployeeDao {

	public int registerEmployee(Employee employee) throws ClassNotFoundException, SQLException {

		Connection connection = MysqlConnection.createConnect();
		PreparedStatement preparedStatement = null;
		try {

			preparedStatement = connection.prepareStatement("INSERT INTO employee"
					+ "(firstname, lastname, username, password, address, contact) VALUES (?, ?, ?, ?, ?, ?);");
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUserName());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getContactNo());
			preparedStatement.executeUpdate();
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
		return 0;
	}

}

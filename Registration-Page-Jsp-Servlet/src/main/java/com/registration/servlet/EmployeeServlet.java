package com.registration.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registration.dao.EmployeeDao;
import com.registration.model.Employee;

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private EmployeeDao employeeDao;

	public void init() {
		employeeDao = new EmployeeDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int registerEmployeeId = 0;

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contactNo = request.getParameter("contactno");

		Employee employee = new Employee();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setUserName(userName);
		employee.setPassword(password);
		employee.setAddress(address);
		employee.setContactNo(contactNo);

		try {
			registerEmployeeId = employeeDao.registerEmployee(employee);
			HttpSession session = request.getSession();
			session.setAttribute("data", employee);
			response.sendRedirect("display.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (registerEmployeeId > 0) {
			request.setAttribute("firstName", employee.getFirstName());
			request.setAttribute("lastName", employee.getLastName());
			request.setAttribute("userName", employee.getUserName());
			request.setAttribute("password", employee.getPassword());
			request.setAttribute("address", employee.getAddress());
			request.setAttribute("contactNo", employee.getContactNo());

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		}
	}

}
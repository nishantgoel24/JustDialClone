package com.utility;

import java.sql.*;

import javax.servlet.http.HttpSession;

import com.beans.LoginBean;

public class DbCheck {
	LoginBean login = new LoginBean();
	Connection connection;

	public DbCheck(LoginBean login) {
		this.login = login;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public Boolean check() {
		Boolean check = false;
		String username = login.getUsername();
		String password = login.getPassword().trim();
		String passwordDB = null;
		String query = "select PASSWORD from project.registrationtable where EMAIL = '"
				+ username + "'";
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(query);
			while (rs.next()) {
				passwordDB = rs.getString(1).trim();
			}

			if (password.equalsIgnoreCase(passwordDB)) {

				check = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return check;
	}

}

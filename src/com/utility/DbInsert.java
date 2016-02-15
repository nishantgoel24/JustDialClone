package com.utility;

import java.sql.*;

import com.beans.Registration;

public class DbInsert {

	Connection connection;
	int maxid = 0;
	Registration register = new Registration();

	public DbInsert(Registration register) {
		try {
			this.register = register;
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

	public int getmaxid() {
		Statement statement;

		try {
			statement = connection.createStatement();
			ResultSet resultset = statement
					.executeQuery("select max(REGISTRATIONID) from project.registrationtable");
			while (resultset.next()) {
				maxid = resultset.getInt(1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ++maxid;
	}

	public String insertLocationNear(String locationActual) {
		int indexOfLocationNear = 0;
		Statement gettingIndexOfLocationNear;
		Statement gettingStringOfLocationNear;
		String stringOfLocationNear = null;
		try {
			gettingIndexOfLocationNear = connection.createStatement();
			ResultSet gettingIndex = gettingIndexOfLocationNear
					.executeQuery("select LOCATIONID from project.locationcategory where LOCATION = '"
							+ locationActual + "'");
			while (gettingIndex.next()) {
				indexOfLocationNear = gettingIndex.getInt(1);
			}
			indexOfLocationNear = indexOfLocationNear / 10;
			indexOfLocationNear = indexOfLocationNear * 10;

			gettingStringOfLocationNear = connection.createStatement();
			ResultSet gettingLocationNearString = gettingStringOfLocationNear
					.executeQuery("select LOCATION from project.locationcategory where LOCATIONID = "
							+ indexOfLocationNear);

			while (gettingLocationNearString.next()) {
				stringOfLocationNear = gettingLocationNearString.getString(1);

			}

		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return stringOfLocationNear;
	}

	public void insert() {
		this.getmaxid();
		String query = "insert into project.registrationtable values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstatement = connection.prepareStatement(query);
			pstatement.setInt(1, register.getRegistrationid());
			pstatement.setString(2, register.getFirstname());
			pstatement.setString(3, register.getLastname());
			pstatement.setString(4, register.getLocation());
			String location = insertLocationNear(register.getLocation());
			pstatement.setString(5, location);
			pstatement.setString(6, register.getEmailid());
			pstatement.setString(7, register.getPassword());
			pstatement.setString(8, register.getMobile());
			pstatement.setString(9, register.getAddress());
			pstatement.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

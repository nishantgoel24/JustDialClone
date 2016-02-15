package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.http.HttpSession;

public class ClassifiedInsertClass {
	Connection conn;

	/**
	 * Connection in constructor so that each time object of class is created
	 * its being called.
	 */
	public ClassifiedInsertClass() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * This is a function to insert a new general classified.
	 * 
	 * @param rid
	 * @param image
	 * @param subject
	 * @param descrp
	 * @param keywords
	 */
	public void InsertRecord(int rid, String image, int itemtype,
			String descrp, String keywords) {
		int max = 0;
		String query = "insert into buyselltable values(?,?,?,?,?,?)";

		try {

			Statement st = conn.createStatement();
			ResultSet rs = st
					.executeQuery("select count(*) from buyselltable");
			while (rs.next()) {
				max = rs.getInt(1);
			}
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, ++max);
			ps.setInt(2, rid);
			ps.setString(3, image);
			ps.setInt(4, itemtype);
			ps.setString(5, descrp);
			ps.setString(6, keywords);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

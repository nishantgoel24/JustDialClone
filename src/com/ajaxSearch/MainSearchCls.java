package com.ajaxSearch;

import java.io.PrintWriter;
import java.sql.*;
import java.util.Iterator;
import java.util.Vector;

public class MainSearchCls {
	Connection conn;
	Statement statement;
	public MainSearchCls() {
		
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
			statement = conn.createStatement();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	/**
	 * This function returns a vector which contains data from table businessdetails  with the entered key word
	 * @param searched
	 * @return
	 */

	public Vector retBdetails(String searched) {
		
		Vector<String> vector = new Vector<String>();
	
		try {
			
			PreparedStatement ps = conn
					.prepareStatement("select * from businessdetails where BDETAILNAME like '"+"%"+searched+"%"+"' OR BDETAILADDRESS like '"+"%"+searched+"%"+"'");

			ResultSet rs = ps.executeQuery();
			int k=0;
			
			while (rs.next()) {
				for (int i = 4; i <= 7; i++) {
					vector.add(rs.getObject(i).toString());
				}
				
				}

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vector;
	}
	
	
	
	
	public Vector retHospitals() {

		Vector<String> vec = new Vector<String>();
		try {
			ResultSet rs = statement
					.executeQuery("select * from businessdetails where BUSINESSID=1");
			while (rs.next()) {
				for (int i = 4; i <= 7; i++) {
					vec.add(rs.getObject(i).toString());
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;

	}

	public Vector retRestaurants() {

		Vector<String> vec = new Vector<String>();
		try {
			ResultSet rs = statement
					.executeQuery("select * from businessdetails where BUSINESSID=2");
			while (rs.next()) {
				for (int i = 4; i <= 7; i++) {
					vec.add(rs.getObject(i).toString());
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;

	}

	public Vector retATMs() {
		
		Vector<String> vec=new Vector<String>();
		try {
			ResultSet rs=statement.executeQuery("select * from businessdetails where BUSINESSID=3");
			while (rs.next()) {
				for(int i=4;i<=7;i++){
				vec.add(rs.getObject(i).toString());	
			}}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
		
		}
}

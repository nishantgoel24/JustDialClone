package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class Dbretrievelocations {

	public Vector<String> returnLocations(){
		Vector<String> locations=new Vector<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://192.168.1.20:3306/project","root","1234");
			Statement statement = connection.createStatement();
			ResultSet resultset = statement.executeQuery("select LOCATION from project.locationcategory");
			while(resultset.next())
			locations.add(resultset.getString(1));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return locations;
		
		
		
		
		
	}
	
}

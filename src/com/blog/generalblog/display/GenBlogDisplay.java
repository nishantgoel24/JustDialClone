package com.blog.generalblog.display;

import java.io.PrintWriter;
import java.sql.*;
import java.util.Iterator;
import java.util.Vector;

public class GenBlogDisplay {
	/**
	 * 
	 * @return
	 */

	public Vector retGBlogData(String searched) {
		
		Vector<String> vector = new Vector<String>();
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
			PreparedStatement ps = conn
					.prepareStatement("select * from generalblogtable where DESCRIPTION like '"+"%"+searched+"%"+"' OR KEYWORDS like '"+"%"+searched+"%"+"' OR SUBJECT like '"+"%"+searched+"%"+"'");

			ResultSet rs = ps.executeQuery();
			int k=0;
			while (rs.next()) {
				for (int i = 2; i <= 6; i++) {
					vector.add(rs.getObject(i).toString());
				}
				PreparedStatement ps1 = conn
						.prepareStatement("select FIRSTNAME,LASTNAME from registrationtable where REGISTRATIONID=?");
		
				//To pick zero index value of vector i.e REGISTRATIONID.
				ps1.setInt(1, Integer.parseInt(vector.get(k)));
				//To pick the firstname and lastname from registrationtable.
				ResultSet rs1 = ps1.executeQuery();
				while (rs1.next()) {
					for (int j = 1; j <= 2; j++) {
						vector.add(rs1.getObject(j).toString());
					}
				}
				k+=7;//count for vector index
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vector;
	}
}

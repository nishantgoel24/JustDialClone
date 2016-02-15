package com.blog.generalblog.display;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Vector;

public class tetser {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Vector<String> vector = new Vector<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
			PreparedStatement ps = conn.prepareStatement("select * from generalblogtable");
			System.out.println("after ps statement");
			ResultSet rs = ps.executeQuery();
			int k = 0;
			while (rs.next()) {
				for (int i = 2; i <= 6; i++) {
					vector.add(rs.getObject(i).toString());
				}
				PreparedStatement ps1 = conn
						.prepareStatement("select FIRSTNAME,LASTNAME from registrationtable where REGISTRATIONID=?");
				ps1.setInt(1, Integer.parseInt(vector.get(k)));
				ResultSet rs1 = ps1.executeQuery();
				while (rs1.next()) {
					for (int j = 1; j <= 2; j++) {
						vector.add(rs1.getObject(j).toString());
					}
				}
				k += 7;
			}
			Iterator itr = vector.iterator();
			while (itr.hasNext()) {
				System.out.println(itr.next());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

package com.blog.generalblog.display;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.BlogAdsRegisterBean;

public class ProfileDisplay {
	
	/**
	 * This function is used to get USERPROFILE from registrationtable.
	 * @param id
	 * @return
	 */

	public ArrayList<BlogAdsRegisterBean> getUserProf(int id){
		//Using ARRAYLIST to access Registration bean class.
		ArrayList<BlogAdsRegisterBean> Registrationarrylst=new ArrayList<BlogAdsRegisterBean>();
		BlogAdsRegisterBean regobj=new BlogAdsRegisterBean();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
			PreparedStatement ps = conn
					.prepareStatement("select * from registrationtable where REGISTRATIONID=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
			regobj.setRegistrationid(Integer.parseInt(rs.getObject(1).toString()));
			regobj.setFirstname(rs.getString(2));
			regobj.setLastname(rs.getString(3));
			regobj.setLocationactual(rs.getString(4));
			regobj.setLocationnear(rs.getString(5));
			regobj.setEmailid(rs.getString(6));
			regobj.setPassword(rs.getString(7));
			regobj.setMobile(rs.getString(8));
			regobj.setAddress(rs.getString(9));
			}
			Registrationarrylst.add(regobj);//This is used to add object of Registration class in Arraylist.
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return Registrationarrylst;
	}
}

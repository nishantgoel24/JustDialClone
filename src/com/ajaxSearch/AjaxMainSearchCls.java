package com.ajaxSearch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class AjaxMainSearchCls {

	/**
	 * This is used to fetch keywords from the table businessdetails and pass it to MainSearch.jsp
	 * @return
	 */
	public String getKeyWords() {
		String keywords="";
		String filteredkeywords="";
		String[] keyarr = null;
		Vector<String> vec=new Vector<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.1.20:3306/project", "root", "1234");
			Statement st = conn.createStatement();
			ResultSet rs = st
					.executeQuery("select BDETAILNAME from businessdetails");

			while (rs.next()) {
				vec.add(rs.getString(1));
				vec.add(",");

			}
			
			Iterator itr=vec.iterator();
			while(itr.hasNext()){
				keywords+=itr.next();
				
			}
		//	System.out.println(keywords);
			keyarr=keywords.split(",");
			Set<String> stringSet = new HashSet<>(Arrays.asList(keyarr));
			String[] filteredkeyArray = stringSet.toArray(new String[0]);
			for (int i = 0; i < filteredkeyArray.length; i++) {
				filteredkeywords+=filteredkeyArray[i];
				filteredkeywords+=",";
				
			}
		/*	System.out.println(keyarr[1]);
			System.out.println(keyarr[2]);*/
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return filteredkeywords+"Rajouri garden,Pitampura,Connaught Place,Karol Bagh,Vasant Kunj,Mayur Vihar".trim();
	}
}

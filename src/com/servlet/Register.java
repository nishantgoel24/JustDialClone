package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Registration;
import com.utility.DbInsert;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
       // super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	*/
	
    public void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String parameters[] = { "firstname", "lastname", "location", "email",
				"password", "mobile", "address" };
		String parametersValue[] = new String[parameters.length];
		for (int parameterindex = 0; parameterindex < parameters.length; parameterindex++) {

			parametersValue[parameterindex] = request
					.getParameter(parameters[parameterindex]);

		}
		if(parametersValue[0]==""||parametersValue[1]==""||parametersValue[2]==""||parametersValue[3]==""||parametersValue[4]==""||parametersValue[5]==""||parametersValue[6]==""){
			out.println("All the entries must me completed<br>");
			out.println("<a href=Registration.jsp>Try Again</a>");
		}
		Registration register = new Registration();
		register.setFirstname(parametersValue[0]);
		register.setLastname(parametersValue[1]);
		register.setLocation(parametersValue[2]);
		register.setEmailid(parametersValue[3]);
		register.setPassword(parametersValue[4]);
		register.setMobile(parametersValue[5]);
		register.setAddress(parametersValue[6]);
		
		DbInsert insertvalues = new DbInsert(register);
		register.setRegistrationid(insertvalues.getmaxid());
		insertvalues.insert();
		out.println("Values Inserted Successfully");
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
		// TODO Auto-generated method stub
	}

}

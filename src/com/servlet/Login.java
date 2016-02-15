package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.LoginBean;
import com.utility.DbCheck;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	PrintWriter out=response.getWriter();
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	LoginBean login=new LoginBean();
    	login.setUsername(username);
    	login.setPassword(password);
    	DbCheck check=new DbCheck(login);
    	Boolean test = check.check();
    	if(test){
    		
    		
    	HttpSession session=request.getSession();
    	session.setAttribute("valid",username);
    	response.sendRedirect("home2.jsp");
    	}
    	else{
    		response.sendRedirect("invalidlogin.jsp");
    	
    	}
  
    	
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}

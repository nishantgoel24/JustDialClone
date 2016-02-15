package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.utility.ClassifiedInsertClass;

/**
 * Servlet implementation class BlogInsertServlet
 */
public class ClassifiedInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ClassifiedInsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * This is a processRequest function for post and get methods of the servlet
	 */
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		ClassifiedInsertClass obj = new ClassifiedInsertClass();
		/*
		 * HttpSession sess=request.getSession(); int
		 * rid=Integer.valueOf(sess.getAttribute("rid").toString());
		 */
		int rid = 1;
		String image = request.getParameter("imageselected");
		int itemtype = Integer.valueOf(request.getParameter("itemtype"));
		String descrp = request.getParameter("description");
		String keywords = request.getParameter("keywords").toLowerCase().trim();
		System.out.print(rid+image+itemtype+descrp+keywords);
		obj.InsertRecord(rid, image, itemtype, descrp, keywords);
		out.println("Classified Posted");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}

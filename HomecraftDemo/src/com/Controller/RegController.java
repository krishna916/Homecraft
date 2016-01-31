package com.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.RegDao;
import com.Model.RegModel;

/**
 * Servlet implementation class RegController
 */
@WebServlet("/RegController")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("submit").equalsIgnoreCase("submit"))
		{
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String mobile = request.getParameter("mobile");
			String address = request.getParameter("address");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String country = request.getParameter("country");
			String state = request.getParameter("state");
			String city = request.getParameter("city");
			
			HttpSession session = null;
			
			RegModel model = new RegModel();
			model.setFname(fname);
			model.setLname(lname);
			model.setEmail(email);
			model.setPassword(password);
			model.setMobile(mobile);
			model.setAddress(address);
			model.setDob(dob);
			model.setGender(gender);
			model.setCountry(country);
			model.setState(state);
			model.setCity(city);
			
			int i=0;
			
			try {
				i = RegDao.register(model);
				System.out.println(i);
				if(i!=0)
				{
					session  = request.getSession();
					session.setAttribute("userEmail", email);
					response.sendRedirect("userdashboard.jsp");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}

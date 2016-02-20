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
import com.Model.AgencyRegModel;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

import methods.Hashing;

/**
 * Servlet implementation class AgencyRegController
 */
@WebServlet("/AgencyRegController")
public class AgencyRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgencyRegController() {
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
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("submit").equalsIgnoreCase("submit"))
		{
			String agencyName = request.getParameter("agencyName");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String address = request.getParameter("address");
			String mobile = request.getParameter("mobile");
			String country = request.getParameter("country");
			String state = request.getParameter("state");
			String city = request.getParameter("city");
			//HttpSession session = null;
			
			String ePassword = Hashing.encrypt(password);
			AgencyRegModel model = new AgencyRegModel();
			
			model.setAgencyName(agencyName);
			model.setEmail(email);
			model.setPassword(ePassword);
			model.setAddress(address);
			model.setMobile(mobile);
			model.setCountry(country);
			model.setState(state);
			model.setCity(city);
			
			
			int i=0;
			
			try {
				i = RegDao.agencyRegister(model);
				System.out.println(i);
				if(i!=0)
				{
					//session  = request.getSession();
					//session.setAttribute("userEmail", email);
					//response.sendRedirect("agencydashboard.jsp");
					request.getRequestDispatcher("AgencyRegSuccess.jsp").forward(request, response);
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MySQLIntegrityConstraintViolationException e) {
				
				String s = "duplicate";
				request.setAttribute("duplicate", s);
				request.getRequestDispatcher("agencyRegistration.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
					
		}
	}

}

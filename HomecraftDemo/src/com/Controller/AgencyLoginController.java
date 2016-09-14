package com.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.LoginDao;
import com.Model.AgencyRegModel;

import methods.Hashing;

/**
 * Servlet implementation class AgencyLoginController
 */
@WebServlet("/AgencyLoginController")
public class AgencyLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgencyLoginController() {
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
		if(request.getParameter("login").equalsIgnoreCase("login"))
		{
			HttpSession session = null;
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String ePassword = Hashing.encrypt(password);
			AgencyRegModel model = new AgencyRegModel();
			model.setEmail(email);
			model.setPassword(ePassword);
			
			int i=0;
			AgencyRegModel model2 = new AgencyRegModel();
			try {
				model2 = LoginDao.getAgency(model);
				String checkEmail = model2.getEmail();
				System.out.println(checkEmail);
				System.out.println(i);
				//if(!model2.getAgencyName().isEmpty() && model2.getAgencyName()!=null)
				if(checkEmail.equalsIgnoreCase(email))
				 {
					
					 session = request.getSession();
					 session.setAttribute("agencyId", model2.getAgencyId());
					 session.setAttribute("agencyName",model2.getAgencyName());
					 request.getRequestDispatcher("agencydashboard.jsp").forward(request, response);
					 
				 }
				else
				 {
					 response.sendRedirect("agencyLoginError.jsp");
				 }
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}

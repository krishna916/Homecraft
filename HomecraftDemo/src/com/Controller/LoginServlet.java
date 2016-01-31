package com.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.LoginDao;

import com.Model.RegModel;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
			
			RegModel model = new RegModel();
			model.setEmail(email);
			model.setPassword(password);
			int i=0;
			
			try {
				RegModel model1 = LoginDao.getUser(model);
				
				if(!(model1.getFname().isEmpty()))
				 {
					String fname = model1.getFname();
					 session = request.getSession();
					 session.setAttribute("userEmail",fname);
					 request.setAttribute("fname",fname);
					 response.sendRedirect("userdashboard.jsp");
					 
				 }
				else
				 {
					 response.sendRedirect("userLoginError.jsp");
				 }
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}

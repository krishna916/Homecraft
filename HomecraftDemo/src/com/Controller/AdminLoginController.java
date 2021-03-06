package com.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.LoginDao;
import com.Dao.admin.HomePageInfo;
import com.Model.AdminModel;

/**
 * Servlet implementation class AdminLoginController
 */
@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginController() {
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
			String email = request.getParameter("email");
			String password =  request.getParameter("password");
			HttpSession session = null;
			
			AdminModel model = new AdminModel();
			model.setEmail(email);
			model.setPassword(password);
			
			int i=0;
			
			 try {
				AdminModel model1 = LoginDao.getAdmin(model);
				
				System.out.println(i);
				if(!(model1.getFname().isEmpty()))
				 {
					//System.out.println("he");
					String name = model1.getFname();
					//System.out.println(name);
					String admin = "admin";
					 session = request.getSession();
					 //session.setAttribute("userEmail",email);
					 session.setAttribute("name", name);
					 session.setAttribute("admin", admin);
					 ////response.sendRedirect("admindashboard.jsp");
					 
					 
					 request.getRequestDispatcher("AdminHomepage").forward(request, response);;
				 }
				else
				 {
					 response.sendRedirect("adminLoginError.jsp");
				 }
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
	



package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import com.Model.AgencyRegModel;
import com.Model.RegModel;
import com.Util.DbUtil;

public class RegDao {
	
		public static int register(RegModel model) throws ClassNotFoundException, SQLException {
			Connection connection = DbUtil.getCon();
			PreparedStatement ps = null;
			
			String query = "insert into usermaster (fname,lname,email,password,mobile,address,security,secAnswer,dateofbirth,gender,country,state,city) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = connection.prepareStatement(query);
			ps.setString(1, model.getFname());
			ps.setString(2, model.getLname());
			ps.setString(3, model.getEmail());
			ps.setString(4, model.getPassword());
			ps.setString(5, model.getMobile());
			ps.setString(6, model.getAddress());
			ps.setString(7, model.getSecurity());
			ps.setString(8, model.getSecAnswer());
			ps.setString(9, model.getDob());
			ps.setString(10, model.getGender());
			ps.setString(11, model.getCountry());
			ps.setString(12, model.getState());
			ps.setString(13, model.getCity());
			
			int i = ps.executeUpdate();
			
			return i;
		}
		
		public static int agencyRegister(AgencyRegModel model) throws ClassNotFoundException, SQLException {
			int i=0;
			Connection connection;
			
			PreparedStatement ps = null;
			
			String query ="insert into agencymaster (agencyName,email,password,address,contact,country,state,city) values (?,?,?,?,?,?,?,?)";
			
				connection = DbUtil.getCon();
				ps = connection.prepareStatement(query);
				ps.setString(1,model.getAgencyName());
				ps.setString(2,model.getEmail());
				ps.setString(3,model.getPassword());
				ps.setString(4,model.getAddress());
				ps.setString(5,model.getMobile());
				ps.setString(6,model.getCountry());
				ps.setString(7,model.getState());
				ps.setString(8,model.getCity());
				
				 i = ps.executeUpdate();
				 
					return i;
			
				
				// TODO Auto-generated catch block
				
			}
			
			
			
			
			
		}


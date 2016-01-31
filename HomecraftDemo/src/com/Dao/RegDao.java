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
			
			String query = "insert into usermaster (fname,lname,email,password,mobile,address,dateofbirth,gender,country,state,city) values (?,?,?,?,?,?,?,?,?,?,?)";
			ps = connection.prepareStatement(query);
			ps.setString(1, model.getFname());
			ps.setString(2, model.getLname());
			ps.setString(3, model.getEmail());
			ps.setString(4, model.getPassword());
			ps.setString(5, model.getMobile());
			ps.setString(6, model.getAddress());
			ps.setString(7, model.getDob());
			ps.setString(8, model.getGender());
			ps.setString(9, model.getCountry());
			ps.setString(10, model.getState());
			ps.setString(11, model.getCity());
			
			int i = ps.executeUpdate();
			
			return i;
		}
		
		public static int agencyRegister(AgencyRegModel model) throws ClassNotFoundException, SQLException {
			
			Connection connection = DbUtil.getCon();
			PreparedStatement ps = null;
			
			String query ="insert into agencymaster (agencyName,email,password,address,contact,country,state,city) values (?,?,?,?,?,?,?,?)";
			ps = connection.prepareStatement(query);
			ps.setString(1,model.getAgencyName());
			ps.setString(2,model.getEmail());
			ps.setString(3,model.getPassword());
			ps.setString(4,model.getAddress());
			ps.setString(5,model.getMobile());
			ps.setString(6,model.getCountry());
			ps.setString(7,model.getState());
			ps.setString(8,model.getCity());
			
			int i = ps.executeUpdate();
			return i;
			
			
			
		}
}

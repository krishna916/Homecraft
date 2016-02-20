package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.AdminModel;
import com.Model.AgencyRegModel;
import com.Model.RegModel;

import com.Util.DbUtil;

public class LoginDao {
		
	public static RegModel getUser(RegModel model) throws ClassNotFoundException, SQLException {
		Connection connection = DbUtil.getCon();
		PreparedStatement ps = null;
		ResultSet rs =  null;
		List<RegModel> users = new ArrayList<RegModel>();
		RegModel model1 = new RegModel();
		
		String query="select * from usermaster where email=? and password=?";
		int i = 0;
		ps = connection.prepareStatement(query);
		ps.setString(1,model.getEmail());
		ps.setString(2,model.getPassword());
		
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			model1.setFname(rs.getString("fname"));
			model1.setLname(rs.getString("lname"));
			i=1;
			//users.add(model1);
		}
		return model1;
	}
	
		public static int getAgency(AgencyRegModel model) throws ClassNotFoundException, SQLException {
			Connection connection = DbUtil.getCon();
			PreparedStatement ps = null;
			ResultSet rs =  null;
			
			String query="select * from agencymaster where email=? and password=?";
			int i=0;
			ps = connection.prepareStatement(query);
			ps.setString(1,model.getEmail());
			ps.setString(2,model.getPassword());
			
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				i=1;
			}
			return i;
			
		
	}		
		
		public static AdminModel getAdmin(AdminModel model) throws ClassNotFoundException, SQLException {
			Connection connection = DbUtil.getCon();
			PreparedStatement ps =null;
			ResultSet rs = null ;
			AdminModel model1 = new AdminModel();
			String query="select * from adminmaster where email=? and password=?";
			int i=0;
			ps = connection.prepareStatement(query);
			ps.setString(1,model.getEmail());
			ps.setString(2,model.getPassword());
			
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				model1.setFname(rs.getString("name"));
			}
			return model1;
			
			
		}
	
}

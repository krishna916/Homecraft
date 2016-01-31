package com.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	public static Connection getCon() throws ClassNotFoundException, SQLException
	{
		Connection connection = null;
		Class.forName("com.mysql.jdbc.Driver");
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/homecraftdemo", "root", "krishna1234");
		return connection;
	}

}

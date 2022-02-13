package com.CommentAppByASM;

import java.util.*;
import java.beans.Statement;
import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class Signupp extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException{
		String name=req.getParameter("uname");
		String comment=req.getParameter("comment");
		
		String sql="insert into comments values("+name+","+comment+")";
		
		String url="jdbc:mysql://localhost:3306/myDB";
		String user="root";
		String pass="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,user,pass);
		Statement stat=con.createStatement();
		
		ResultSet rs=stat.executeQuery(sql);
		
		
		stat.close();
		con.close();
		
		res.sendRedirect("welcome.jsp");
		
	}
	

}

package com.CommentAppByASM;

import java.util.*;
import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class Validation extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException{
		String name=req.getParameter("uname");
		String password=req.getParameter("psw");
		
		//checking
		
	String sql="select passwd from Cridential where email="+name;
		
		String url="jdbc:mysql://localhost:3306/myDB";
		String user="root";
		String pass="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,user,pass);
		Statement stat=con.createStatement();
		
		ResultSet rs=stat.executeQuery(sql);
		if(rs.equals(password)) {
			res.sendRedirect("welcome.jsp");
		}
		else {
			res.sendRedirect("index-redirect.jsp");
		}
		
		stat.close();
		con.close();
		
	}
	

}

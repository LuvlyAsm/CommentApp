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

public class Forgott extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException{
		String name=req.getParameter("uname");
		String secret=req.getParameter("secret");
		PrintWriter p=res.getWriter();
		//checking
		
	String sql="select secret from Cridential where email="+name;
	String sql2="select passwd from Cridential where email="+name;

	
		
		String url="jdbc:mysql://localhost:3306/myDB";
		String user="root";
		String pass="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,user,pass);
		Statement stat=con.createStatement();
		
		ResultSet rs=stat.executeQuery(sql);
		ResultSet rs2=stat.executeQuery(sql2);

		
		if(rs.equals(secret)) {
			p.println("Your Password is "+rs2);
		}
		else {
			res.sendRedirect("index-redirect.jsp");
		}
		
		stat.close();
		con.close();
		
	}
	

}

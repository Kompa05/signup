<%@ page language="java" import="java.sql.*"%>
<%
String host ="jdbc:mysql://localhost:3306/";
String dbName ="studentz";
String username ="root";
String password ="";
String url=host+dbName+"?user="+username+"&password="+password;
  String n=request.getParameter("n");
  String e=request.getParameter("e");
  String Password =request.getParameter("password");
  String pwd2=request.getParameter("pwd2");
  String M=request.getParameter("M");
  String course=request.getParameter("course");
  String c=request.getParameter("c");
  
  

  
  try{
  	
  	Class.forName("com.mysql.jdbc.Driver");
  	Connection con=DriverManager.getConnection(url);
  	Statement stmt=con.createStatement();
  	
  	String sql=("INSERT INTO sign(n,e,Password,pwd2,M,course,c) VALUES('"+n+"','"+e+"','"+Password+"','"+pwd2+"','"+M+"','"+course+"','"+c+"')");
  	int i=stmt.executeUpdate(sql);
  	if(i>0)
  	{
  		response.sendRedirect("thanku.html");	   
  	}
  	else{
  		
  		out.println("not inserted");
  	}
  	
  }
  catch(ClassNotFoundException x)
  {
	 out.println("class not found");
  }
  catch(SQLException x)
  {
  	out.println("sql Exception");
  	
  }















%>
    
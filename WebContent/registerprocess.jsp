<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>

<script>
function alert1()
{
	alert("Username already exist...");
	window.location.href = "register.jsp";
	
}
function alert3()
{
	alert("Registration Successful...");
	window.location.href = "home.jsp";
	
}
</script>
<%

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String category=request.getParameter("category");
String email=request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_quiz",
        "root", "root");
	Statement st = con.createStatement();

try{
	

int i = st.executeUpdate("insert into quizregister(username,userpass,category,email) values ('" + username + "','" + userpass + "','" + category + "','" + email + "')");
if (i > 0) {
    //session.setAttribute("userid", user);
    %> <script> alert3(); </script><%
    //response.sendRedirect("home.jsp");
   //out.print("Registration Successfull!"+"<a href='home.jsp'>Go to Login</a>");
     } else 
     {
    response.sendRedirect("home.jsp");
     }
}catch(Exception e)
	{	%><script> alert1(); </script><%
		
	}
%>


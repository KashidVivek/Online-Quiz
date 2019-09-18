<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Login Form</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
function alert1()
{
	alert("You are not a Teacher,You can't make Quiz");
	window.location.href = "home.jsp";
	
}
</script>
</head>
<body background="background_quiz_1.jpg">
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");


%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
<div class="left_content">
             <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='3' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='3' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					if(session.getAttribute("category")!=null){
					String category=(String)session.getAttribute("category");
					if(category.equals("Student")){
					//request.setAttribute("category","You are not a Teacher,You can't make Quiz");
					%><script> alert1(); </script><%
					%>
					<jsp:forward page="home.jsp"></jsp:forward>
					<% 
					}
					
					}
					
					
					%>
            	<div class="calendar_box">
            	
                	<div class="calendar_box_content">
               <br><br><br>
                		 <center>
                		<b><h1 style="color:Wheat";>Welcome to Quiz loader</h1></b></center>
                		<br>
       <marquee direction="left" style="color:khaki;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by taking quizs on various subjects</B></marquee>
                		   
                		<form method="post" action="createquiz.jsp" >
				 <center>	
				 <table align="center" width=200 height=100>
				<tr>
				
				<td><input type="text" name="subject" class="form-control"
					class="textbox" placeholder="           Enter subject "
					style="width: 200px; height: 40px" required/></td>
			</tr><br>
				<td>	<button class="btn btn-lg btn-primary btn-block" type="submit">
				Create Quiz </button>  </td>

			</tr>
                     	
                     	</table> </center>
                     </form>
  
                	</div>
                </div>
                
            </div>
            <!--end of left content-->


          <div id="footer">
    
    </div>


		</div> <!--end of center box-->
	</div> <!--end of main content-->
</div> <!--end of main container-->
</body></html>

<jsp:include page="footer.html"></jsp:include>
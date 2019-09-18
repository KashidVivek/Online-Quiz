<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
</script>
</head>
<body background="background_quiz_1.jpg">
	<div class="left_content">
             <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
					<%
					if(request.getAttribute("finished")!=null){
					   out.print("<font size='2' color='navy'>");
                   out.print("<B>");
					out.print(request.getAttribute("finished"));
					  out.print("<B>");
   						out.print("</font>");
					}
					if(request.getAttribute("category")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("category"));
					out.print("</font>");
					}
				
					%>
            	<div class="calendar_box">
            	
                	<div class="calendar_box_content">
               
                		<br>
               
                <center>
                		<b><h1 style="color:Wheat";>Welcome to Quiz loader</h1></b></center>
                		<br>
                <center>		
                	<marquee direction="left" style="color: khaki;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by taking quizs on various subjects</B></marquee>
                	<br>
                	<br>
                	<br>
                	<p>
                	<font style="color: khaki;"><h3>Now Teacher and Student can work together online.<br>
                								Tutors are most welcomed to my site <br>
                							    They can create Quiz simply by clicking Make Quiz link.<br>
                							    And Students can appear in quiz based on various subject.<br></h3> </font>
                	</p>
  
                	</div>
                </div>            
            
            </div>
            <!--end of left content-->

	<div id="footer">
    
    </div>

		</div> <!--end of center box-->
	</div> <!--end of main content-->
</div> <!--end of main container-->
</body>
</html>


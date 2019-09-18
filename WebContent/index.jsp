<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

</script>
</head>

<body background="background_quiz_1.jpg">

<div id="main_container">
	<div class="main_content">
    	<div id="header">
      
        </div>
        <div class="top_center_box"></div>
        <div class="center_box">
<br>
    
            <center>
     <div class="left_content">
             <% 
					if(request.getAttribute("notlogin_msg")!=null)
					{
					out.print("<font size='3' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
				%>
				<% 
					if(request.getAttribute("Error")!=null)
					{
					out.print("<font size='3' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					
				%>
            </center>	
            	<br>
               <br><br>
                <center>
                		<b><h1 style="color:Wheat";>Welcome to Quiz loader</h1></b></center>
                		<br>
                <center>		 
           <form method="post" action="loginprocess.jsp" >
           				<!-- 	<B> Login Form</B>
					Category:<select name="category">
					<option>Select a Category</option>
					<option>Teacher</option>
					<option>Student</option>
					</select>
					
					<input type="text" name="username" class="form-control" placeholder="           Enter username " required/>
								
					<input type="password" name="userpass"class="form-control" placeholder="           Enter password " required/>	
						
					<input type="submit" value="Sign in"/> <a href="register.jsp">Register</a>
					-->
					<table align="center" width=200 height=200>
					<tr>

				<td><select name="category" class="form-control" style="width: 200px; height: 30px">
					<option>Select a Category</option>
					<option>Teacher</option>
					<option>Student</option>
					</select></td>

			</tr>
			
			<tr>

				<td><input type="text" name="username" class="form-control"
					class="textbox" placeholder="           Enter username "
					style="width: 200px; height: 40px" required/></td>
			</tr>

			<tr>

				<td><input type="password" name="userpass"  class="form-control"
					class="textbox" placeholder="           Enter password "
					style="width: 200px; height: 40px" required/></td>
					
			</tr>

			<tr>

				<td>	<button class="btn btn-lg btn-primary btn-block" type="submit">
				Sign In </button>  </td>

			</tr>
					
					</center>
		   </form>

          
                     </table>
                     <center>
                     <br>
			<h3 style="color: khaki">Don't have account !!!</h3>
			
			<form action="register.jsp">
			<table align="center" width=200 height=70>
				<tr>

				<td>	<a href="register.jsp"><button class="btn btn-lg btn-primary btn-block" type="submit">
				Register today </button></a>  </td>

			</tr>
			</table>
			</form>
		</center>

            </div>
            <!--end of left content-->


            

	<div id="footer">
    
    </div>


		</div> <!--end of center box-->
	</div> <!--end of main content-->
</div> <!--end of main container-->


</body></html>
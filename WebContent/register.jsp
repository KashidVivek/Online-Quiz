<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Registration Form</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<script>
var request;

function checkPass()
{
    var pass1 = document.getElementById('pass1');
    var message = document.getElementById('error-nwl');
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
 	
    if(pass1.value.length > 5)
    {
        pass1.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "character number ok!"
    }
    else
    {
        pass1.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Password must be at least 6 digit!"
        return;
    }
}

usernm:function validation()
{
var a = document.form.name.value;
if(!isNaN(a))
{
alert("Please Enter Only Characters");
document.form.name.select();
return false;
}
}
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
 <br>
           
            <center>
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
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					
					
					%>
            </center>	
            	<br>
               
                
                <center>		 
                		<form method="post" action="registerprocess.jsp" name="myform" onsubmit="return validation()">
					<table>
					
					<center>
                		<b><h2 style="color:Wheat";>Register today</h2></b></center>					
					<table align="center" width=250 height=230>
					<tr>

				<td><select name="category" class="form-control" style="width: 250px; height: 30px">
					<option>Select a Category</option>
					<option>Teacher</option>
					<option>Student</option>
					</select></td>

			</tr>
				
			<tr>

				<td><input type="text" usernm name="username" class="form-control"
					class="textbox" placeholder="                Enter username "
					style="width: 250px; height: 40px" required/></td>
			</tr>

			<tr>

				<td><input type="password" name="userpass" id="pass1" onkeyup="checkPass(); return false;" class="form-control"
					class="textbox" placeholder="                Enter password "
					style="width: 250px; height: 40px" required/></td>

			</tr>
				
			<tr>

				<td><input type="email" name="email"  class="form-control"
					class="textbox" placeholder="                 Enter email id "
					style="width: 250px; height: 40px" required/></td>

			</tr>
			<tr>



				<td>	<button class="btn btn-lg btn-primary btn-block" type="submit">
				Register </button>  </td>

					</tr>
					
					</center>
                     </form>

              
                            
               
            </div>
            <!--end of left content-->


            

	<div id="footer">
    
    </div>


		</div> <!--end of center box-->
	</div> <!--end of main content-->
</div> <!--end of main container-->
</body></html>




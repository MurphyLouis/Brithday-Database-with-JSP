<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  	<form action="signupAction.jsp" method="post">
  		<input type="text" name="name" placeholder="Enter Name" required>
  		<input type="email" name="email" placeholder="Enter email" required>
  		<input type="number" name="phoneNumber" placeholder="Enter Phone Number" required>
  		<input type="password" name="password" placeholder="Enter Password" required>
  		<input type="submit" value="signup" >
  	</form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<%} %>

<%if("invalid".equals(msg))
{	
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>BirthDatabase</h2>
    <p>BirthDatabase contains the information that are filled during every birth of a child in the country.</p>
  </div>
</div>

</body>
</html>
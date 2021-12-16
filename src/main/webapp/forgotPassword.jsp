<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="phoneNumber" placeholder="Enter PhoneNumber" required>
     <input type="password" name="newPassword" placeholder="Enter your new password " required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  
  <%
  String msg = request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%if("invalid".equals(msg))
	{%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>BirthDatabase</h2>
    <p>BirthDatabase contains the information that are filled during every birth of a child in the country.</p>
  </div>
</div>
</body>
</html>
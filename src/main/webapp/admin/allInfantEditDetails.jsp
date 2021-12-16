<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>
<%
String msg= request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Details Successfully Updated!</h3>
<%} %>

<%if("wrong".equals(msg)) 
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<%if("true".equals(msg)) 
{
%>
<h3 class="alert">Details Successfully Deleted!</h3>
<%} %>
<%if("false".equals(msg)) 
{
%>
<h3 class="alert">Can not delete, try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">BirthType</th>
            <th scope="col">BirthPlace</th>
            <th scope="col">BirthDate</th>
            <th scope="col">BirthTime</th>
            <th scope="col">Name</th>
            <th scope="col">Sex</th>
            <th scope="col">Weight--KG</th>
            <th scope="col">FatherName</th>
            <th scope="col">MotherName</th>
            <th scope="col">TypeOfDeath</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
            <th scope="col">Delete <i class='fas fa-trash'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from births");
    	   while(rs.next())
    	   {
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %> <span> KG</span></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %></td>
            <td><a  href="editDetails.jsp?id=<%=rs.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
            <td><a  href="deleteDetails.jsp?id=<%=rs.getString(1) %>">Delete <i class='fas fa-trash'></i></a></td>
          </tr>
         <% 
    	   }
       }
       catch(Exception e){
    	   System.out.println(e);
       }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
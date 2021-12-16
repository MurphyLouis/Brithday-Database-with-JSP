<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
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
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>


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
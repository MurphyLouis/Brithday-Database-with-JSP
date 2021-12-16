<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String birthType=request.getParameter("birthType");
String birthPlace=request.getParameter("birthPlace");
String birthDate=request.getParameter("birthDate");
String birthTime=request.getParameter("birthTime");
String Name=request.getParameter("Name");
String sex=request.getParameter("sex");
String weight=request.getParameter("weight");
String fatherName=request.getParameter("fatherName");
String motherName=request.getParameter("motherName");
String typeOfDeath=request.getParameter("typeOfDeath");

try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from births where id='"+id+"'");
	response.sendRedirect("allInfantEditDetails.jsp?msg=true");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allInfantEditDetails.jsp?msg=false");
}

%>
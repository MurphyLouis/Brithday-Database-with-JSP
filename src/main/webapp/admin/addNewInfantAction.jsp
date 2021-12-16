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
	
	Connection con= ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("insert into births values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, birthType);
	ps.setString(3, birthPlace);
	ps.setString(4, birthDate);
	ps.setString(5, birthTime);
	ps.setString(6, Name);
	ps.setString(7, sex);
	ps.setString(8, weight);
	ps.setString(9, fatherName);
	ps.setString(10, motherName);
	ps.setString(11, typeOfDeath);
	ps.executeUpdate();
	response.sendRedirect("addNewInfant.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewInfant.jsp?msg=wrong");
}
%>
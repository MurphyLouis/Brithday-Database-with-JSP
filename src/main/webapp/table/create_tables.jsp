<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try
{
    Connection con= ConnectionProvider.getCon();
    Statement st=con.createStatement();
    String q1 ="create table users(name varchar(100),email varchar(100)primary key,phoneNumber bigint,password varchar(100) )";
    String q2="create table births(id int,birthType varchar(200),birthPlace varchar(500),birthDate varchar(50),birthTime varchar(50),Name varchar(100),sex varchar(10),weight int,fatherName varchar(100),motherName varchar(100), typeOfDeath varchar(200))";
    System.out.print(q1);
    System.out.print(q2);
   // st.execute(q1);
    st.execute(q2);
    System.out.print("Table created");
    con.close();
}
catch(Exception e)
{
    System.out.print(e);
}
%>
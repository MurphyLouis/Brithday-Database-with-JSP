<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>


<html>
<head>
<link rel="stylesheet" href="../css/addNewInfant-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allInfantEditDetails.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

<%
String id=request.getParameter("id");
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select * from births where id='"+id+" '");
	while(rs.next())
	{

%>
<form action="editDetailsAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id);%>">
<div class="left-div">
 <h3>Enter BithType</h3>
 <select class="input-style" name="birthType" required>
 <option value="<%=rs.getString(2)%>"></option>
 <option value="Vaginal Delivery">Vaginal Delivery</option>
 <option value="Cesarian Section">Cesarian Section</option>
 <option value="Vaginal Birth After Cesarian">Vaginal Birth After Cesarian</option>
 <option value="Vacuum Extraction">Vacuum Extraction</option>
 <option value="Forceps Delivery">Forceps Delivery</option>
 </select>
 <hr>
</div>

<div class="right-div">
<h3>Enter Place of Birth </h3>
 <input class="input-style" type="text" name="birthPlace" value="<%=rs.getString(3)%>"required>
<hr>
</div>

<div class="left-div">
<h3>Enter BirthDate</h3>
<input class="input-style" type="date" name="birthDate" value="<%=rs.getString(4)%>" required>
 <hr>
</div>

<div class="right-div">
<h3>Enter BirthTime</h3>
<input class="input-style" type="time" name="birthTime" value="<%=rs.getString(5)%>" required>
<hr>
</div>

<div class="left-div">
<h3> Enter Infant-Name</h3>
 <input class="input-style" type="text" name="Name"  value="<%=rs.getString(6)%>" required>
<hr>
</div>

<div class="right-div">

 <h3>Enter InfantSex</h3>
 <select class="input-style" name="sex"  required>
 <option value="<%=rs.getString(7)%>"></option>
 <option value="Male">Male</option>
 <option value="Female">Female</option>
 </select>
<hr>
</div>

<div class="left-div">
<h3> Enter Infant-Weight</h3>
  <input class="input-style" type="number" name="weight" value="<%=rs.getString(8)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter FatherName </h3>
 <input class="input-style" type="text" name="fatherName" value="<%=rs.getString(9)%>" required>
<hr>
</div>

<div class="left-div">
<h3> Enter MotherName</h3>
 <input class="input-style" type="text" name="motherName" value="<%=rs.getString(10)%>" required>
<hr>
</div>



<div class="right-div">

 <h3>Enter deathType </h3>
 <select class="input-style" name="typeOfDeath"  required>
 <option value="<%=rs.getString(11)%>"></option>
 <option value="infant is Alive">infant is Alive</option>
 <option value="Congenital Defects">Congenital Defects</option>
 <option value="Preterm Birth and Low Birth Weight ">Preterm Birth and Low Birth Weight</option>
 <option value="Infant Accidents">Infant Accidents</option>
 <option value="Sudden Infant Death Syndrome">Sudden Infant Death Syndrome</option>
 <option value="Pregnancy Complications ">Pregnancy Complications</option>
 <option value="Placenta and Umbilical Cord Complications">Placenta and Umbilical Cord Complications</option>
 <option value="Other Causes">Other Causes</option>
 </select>
<hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button> 
</form>

<%}
	}
	catch(Exception e){
		System.out.println(e);
	}%>
</body>
<br><br><br>
</body>
</html>
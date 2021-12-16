<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewInfant-style.css">
<title>Add New Infant</title>
</head>
<body>
<% 
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Details Added Successfully!</h3>
<%} %>

<%if("wrong".equals(msg)){
		%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<% 
int id=1;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from births");
	
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e){
	
}
%>
<form action="addNewInfantAction.jsp" method="post">

<h3 style="color: yellow;">Infant ID: <% out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id);%>">

<div class="left-div">
 <h3>Enter BithType</h3>
 <select class="input-style" name="birthType">
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
 <input class="input-style" type="text" name="birthPlace" placeholder="Enter PlaceName" required>
<hr>
</div>

<div class="left-div">
<h3>Enter BirthDate</h3>
<input class="input-style" type="date" name="birthDate" required>
 
<hr>
</div>

<div class="right-div">
<h3>Enter BirthTime</h3>
<input class="input-style" type="time" name="birthTime" required>
   
<hr>
</div>

<div class="left-div">
<h3> Enter Infant-Name</h3>
 <input class="input-style" type="text" name="Name" placeholder="Enter InfantName" required>
<hr>
</div>

<div class="right-div">

 <h3>Enter InfantSex</h3>
 <select class="input-style" name="sex" >
 <option value="Male">Male</option>
 <option value="Female">Female</option>
 </select>
 
<hr>
</div>

<div class="left-div">
<h3> Enter Infant-Weight</h3>
  <input class="input-style" type="number" name="weight" placeholder="Enter InfantWeight" required>
<hr>
</div>

<div class="right-div">
<h3>Enter FatherName </h3>
 <input class="input-style" type="text" name="fatherName" placeholder="Enter FatherName" required>
<hr>
</div>

<div class="left-div">
<h3> Enter MotherName</h3>
 <input class="input-style" type="text" name="motherName" placeholder="Enter MotherName" required>
<hr>
</div>



<div class="right-div">

 <h3>Enter deathType </h3>
 <select class="input-style" name="typeOfDeath" >
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
</body>
<br><br><br>
</body>
</html>
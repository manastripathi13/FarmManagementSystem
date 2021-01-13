<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	    <div style="width: 70%; float:left; margin-right:30px" id="login-home">
		  <h2>Welcome to Farm Management System</h2>
		  
		  <!-- Dashboard For Employee Section -->
		  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("4")) { %>		
		  <ul>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="Insecticide.jsp">Insecticides</a></li>
				<li><a href="Equipments.jsp">Equipments</a></li>
				<li><a href="pesticide.jsp">Pesticides</a></li>
				<li><a href="customer.jsp?customer_id=<%=session.getAttribute("customer_id")%>">My Account</a></li>
				<li><a href="contact-us.jsp">Contact Us</a></li>
				<li><a href="model/customer.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		  
		 <!-- Dashboard For Super Admin Section -->
		 <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
		  <ul>
				<li><a href="customer.jsp?customer_id=0">Add Applicatnt</a></li>
				<li><a href="employee.jsp?employee_id=0">Add System User</a></li>
				<li><a href="equipment.jsp?equipment_id=0">Add Equipments</a></li>
				<li><a href="pesticides.jsp?pesticides_id=0">Add Pesticides</a></li>
				<li><a href="insecticides.jsp?insecticides_id=0">Add Insecticides</a></li>
				<li><a href="report-employee.jsp">System User Report</a></li>
				<li><a href="report-equipment.jsp">Equipments Report</a></li>
				<li><a href="report-pesticides.jsp">Pesticides Report</a></li>
				<li><a href="report-insecticides.jsp">Insecticides Report</a></li>
				<li><a href="change-password.jsp">Change Password</a></li>
				<li><a href="login.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		  
		</div>
		<div style="float: left">
			<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
			<div><img src="images/save_2.jpg" style="width: 250px"></div>
		</div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>

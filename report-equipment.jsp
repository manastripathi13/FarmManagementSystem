<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Equipment equipmentDetails = new Equipment();
	ArrayList allEquipment = equipmentDetails.getAllEquipment("");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
				<h2>Equipment Report</h2>
				<% if(request.getAttribute("message") != null) { %>
					<div class="msg"><%=request.getAttribute("message") %></div>
				<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Image</th>
              <th>Title</th>
              <th>Cost Range</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allEquipment.size();i++) 
			{ 
				HashMap EquipmentDetails = new HashMap();
				EquipmentDetails = (HashMap)allEquipment.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(EquipmentDetails.get("equipment_id")); %></td>
				  <td>
					<a href="equipment-details.jsp?equipment_id=<% out.print(EquipmentDetails.get("equipment_id")); %>">
						<img src="equipmentImages/<% out.print(EquipmentDetails.get("equipment_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(EquipmentDetails.get("equipment_title")); %></td>
				  <td><% out.print(EquipmentDetails.get("equipment_cost_range")); %></td>
				  <td> <a href="equipment.jsp?equipment_id=<% out.print(EquipmentDetails.get("equipment_id")); %>">Edit</a> </td>
				</tr>
			<%
			}
			%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>

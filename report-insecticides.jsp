<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Insecticides insecticidesDetails = new Insecticides();
	ArrayList allInsecticides = insecticidesDetails.getAllInsecticides("");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
				<h2>Insecticides Report</h2>
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
			<% for(int i=0;i<allInsecticides.size();i++) 
			{ 
				HashMap InsecticidesDetails = new HashMap();
				InsecticidesDetails = (HashMap)allInsecticides.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(InsecticidesDetails.get("insecticides_id")); %></td>
				  <td>
					<a href="insecticides-details.jsp?insecticides_id=<% out.print(InsecticidesDetails.get("insecticides_id")); %>">
						<img src="insecticidesImages/<% out.print(InsecticidesDetails.get("insecticides_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(InsecticidesDetails.get("insecticides_title")); %></td>
				  <td><% out.print(InsecticidesDetails.get("insecticides_cost_range")); %></td>
				  <td> <a href="insecticides.jsp?insecticides_id=<% out.print(InsecticidesDetails.get("insecticides_id")); %>">Edit</a> </td>
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

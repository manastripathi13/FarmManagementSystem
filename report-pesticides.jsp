<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Pesticides pesticidesDetails = new Pesticides();
	ArrayList allPesticides = pesticidesDetails.getAllPesticides("");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
				<h2>Pesticides Report</h2>
				
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
			<% for(int i=0;i<allPesticides.size();i++) 
			{ 
				HashMap PesticidesDetails = new HashMap();
				PesticidesDetails = (HashMap)allPesticides.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(PesticidesDetails.get("pesticides_id")); %></td>
				  <td>
					<a href="pesticides-details.jsp?pesticides_id=<% out.print(PesticidesDetails.get("pesticides_id")); %>">
						<img src="pesticidesImages/<% out.print(PesticidesDetails.get("pesticides_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(PesticidesDetails.get("pesticides_title")); %></td>
				  <td><% out.print(PesticidesDetails.get("pesticides_cost_range")); %></td>
				  <td> <a href="pesticides.jsp?pesticides_id=<% out.print(PesticidesDetails.get("pesticides_id")); %>">Edit</a> </td>
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

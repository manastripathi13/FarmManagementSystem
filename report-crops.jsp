<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Crops cropsDetails = new Crops();
	ArrayList allCrops = cropsDetails.getAllCrops("");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
				<h2>Crops Report</h2>
				<% if(request.getAttribute("message") != null) { %>
					<div class="msg"><%=request.getAttribute("message") %></div>
				<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Image</th>
              <th>Title</th>
              <th>Month</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allCrops.size();i++) 
			{ 
				HashMap CropsDetails = new HashMap();
				CropsDetails = (HashMap)allCrops.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(CropsDetails.get("crops_id")); %></td>
				  <td>
					<a href="crops-details.jsp?crops_id=<% out.print(CropsDetails.get("crops_id")); %>">
						<img src="cropsImages/<% out.print(CropsDetails.get("crops_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(CropsDetails.get("crops_title")); %></td>
				  <td><% out.print(CropsDetails.get("crops_month")); %></td>
				  <td> <a href="crops.jsp?crops_id=<% out.print(CropsDetails.get("crops_id")); %>">Edit</a> </td>
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

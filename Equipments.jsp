<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
  Equipment equipmentDetails = new Equipment();
  String equipment_title = "";
  if(request.getParameterMap().containsKey("equipment_title")) {
    equipment_title = request.getParameter("equipment_title").toString();
	}
	ArrayList allEquipment = equipmentDetails.getAllEquipment(equipment_title);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30">
        <!-- Middle Column -->
        <div class="one_half" style="width:68%"> 
          <!-- ################################################################################################ -->
          <h2>All Equipments</h2>
          <form action="Equipments.jsp" enctype="multipart/form-data">
            <table>
              <tr>
                <td>Search Tearm : </td>
                <td><input type="text" name="equipment_title" id="equipment_title" size="22" style="width:300px;"></td>
                <td><input name="submit" type="submit" value="Search Equipment"></td>
              </tr>
            </table>
          </form>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
          <% for(int i=0;i<allEquipment.size();i++) 
          { 
            HashMap EquipmentDetails = new HashMap();
            EquipmentDetails = (HashMap)allEquipment.get(i);
          %>
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><a href="#"><img src="equipmentImages/<% out.print(EquipmentDetails.get("equipment_image")); %>" style="height:80px; width:80px;"></a></div>
              <p class="nospace btmspace-15"><a href="#" style="text-decoration:underline; font-weight:bold; font-size:15px;"><%=EquipmentDetails.get("equipment_title")%></a></p>
              <p style="color:#000000; margin-top:-12px;">Cost Range : <%=EquipmentDetails.get("equipment_cost_range")%></p>
              <p style="color:#000000; margin-top:-12px;"><%=EquipmentDetails.get("equipment_description")%></p>
            </li>
           <%
              }
           %>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Middle Column --> 
         <div style="float: right">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      </div>
      <!-- / main body -->
      
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>



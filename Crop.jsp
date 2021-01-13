<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
  Crops cropsDetails = new Crops();
  String crops_title = "";
  if(request.getParameterMap().containsKey("crops_title")) {
    crops_title = request.getParameter("crops_title").toString();
	}
	ArrayList allCrops = cropsDetails.getAllCrops(crops_title);
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
          <h2>All Cropss</h2>
          <form action="Crop.jsp" enctype="multipart/form-data">
            <table>
              <tr>
                <td>Search Tearm : </td>
                <td><input type="text" name="crops_title" id="crops_title" size="22" style="width:300px;"></td>
                <td><input name="submit" type="submit" value="Search Crops"></td>
              </tr>
            </table>
          </form>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
          <% for(int i=0;i<allCrops.size();i++) 
          { 
            HashMap CropsDetails = new HashMap();
            CropsDetails = (HashMap)allCrops.get(i);
          %>
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><a href="#"><img src="cropsImages/<% out.print(CropsDetails.get("crops_image")); %>" style="height:80px; width:80px;"></a></div>
              <p class="nospace btmspace-15"><a href="#" style="text-decoration:underline; font-weight:bold; font-size:15px;"><%=CropsDetails.get("crops_title")%></a></p>
              <p style="color:#000000; margin-top:-12px;"><b>Month</b> : <%=CropsDetails.get("crops_month")%></p>
              <p style="color:#000000; margin-top:-12px;"><%=CropsDetails.get("crops_description")%></p>
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



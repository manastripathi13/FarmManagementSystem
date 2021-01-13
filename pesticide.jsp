<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
  Pesticides pesticidesDetails = new Pesticides();
  String pesticides_title = "";
  if(request.getParameterMap().containsKey("pesticides_title")) {
    pesticides_title = request.getParameter("pesticides_title").toString();
	}
	ArrayList allPesticides = pesticidesDetails.getAllPesticides(pesticides_title);
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
          <h2>All Pesticidess</h2>
          <form action="pesticide.jsp" enctype="multipart/form-data">
            <table>
              <tr>
                <td>Search Tearm : </td>
                <td><input type="text" name="pesticides_title" id="pesticides_title" size="22" style="width:300px;"></td>
                <td><input name="submit" type="submit" value="Search Pesticides"></td>
              </tr>
            </table>
          </form>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
          <% for(int i=0;i<allPesticides.size();i++) 
          { 
            HashMap PesticidesDetails = new HashMap();
            PesticidesDetails = (HashMap)allPesticides.get(i);
          %>
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><a href="#"><img src="pesticidesImages/<% out.print(PesticidesDetails.get("pesticides_image")); %>" style="height:80px; width:80px;"></a></div>
              <p class="nospace btmspace-15"><a href="#" style="text-decoration:underline; font-weight:bold; font-size:15px;"><%=PesticidesDetails.get("pesticides_title")%></a></p>
              <p style="color:#000000; margin-top:-12px;">Cost Range : <%=PesticidesDetails.get("pesticides_cost_range")%></p>
              <p style="color:#000000; margin-top:-12px;"><%=PesticidesDetails.get("pesticides_description")%></p>
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



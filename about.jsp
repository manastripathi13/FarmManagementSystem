<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <% if(request.getParameter("msg") != null) { %>
	<div class="msg"><%=request.getParameter("msg") %></div>
	<% } %>
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px; text-align:justify;">
      <h2>About Farm Management System</h2>
      <p>A farm is an area of land that is devoted primarily to agricultural processes with the primary objective of producing food and other crops; it is the basic facility in food production.[1] The name is used for specialised units such as arable farms, vegetable farms, fruit farms, dairy, pig and poultry farms, and land used for the production of natural fibres, biofuel and other commodities. It includes ranches, feedlots, orchards, plantations and estates, smallholdings and hobby farms, and includes the farmhouse and agricultural buildings as well as the land. In modern times the term has been extended so as to include such industrial operations as wind farms and fish farms, both of which can operate on land or sea.</p>
      <p>Farming originated independently in different parts of the world, as hunter gatherer societies transitioned to food production rather than, food capture. It may have started about 12,000 years ago with the domestication of livestock in the Fertile Crescent in western Asia, soon to be followed by the cultivation of crops. Modern units tend to specialise in the crops or livestock best suited to the region, with their finished products being sold for the retail market or for further processing, with farm products being traded around the world.</p>
      <p>Modern farms in developed countries are highly mechanized. In the United States, livestock may be raised on rangeland and finished in feedlots and the mechanization of crop production has brought about a great decrease in the number of agricultural workers needed. In Europe, traditional family farms are giving way to larger production units. In Australia, some farms are very large because the land is unable to support a high stocking density of livestock because of climatic conditions. In less developed countries, small farms are the norm, and the majority of rural residents are subsistence farmers, feeding their families and selling any surplus products in the local market. </p>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
	<script>
		 jQuery('#password_row').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>

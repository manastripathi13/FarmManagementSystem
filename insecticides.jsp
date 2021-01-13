<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Insecticides insecticidesDetails = new Insecticides();
	int insecticides_id = Integer.parseInt(request.getParameter ("insecticides_id"));
	HashMap Values =  insecticidesDetails.getInsecticidesDetails(insecticides_id);	
%>
<script>
function validImage() {
	var val = $("#insecticides_image").val();
	var id = $("#insecticides_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Insecticides Image');
			return false;
		}
		if (!val.match(/(?:gif|jpg|png|bmp)$/)) {
			// inputted file path is not an image of one of the above types
			alert("inputted file path is not an image!");
			return false;
		}
	}
	return true;
}
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Insecticides Form</h2>
		<form method="post" action="UploadInsecticides" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Insecticides Name<span>*</span></label>
            <input type="text" name="insecticides_title" id="insecticides_title" value="<% out.print(Values.get("insecticides_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Cost Range<span>*</span></label>
            <input type="text" name="insecticides_cost_range" id="insecticides_cost_range" value="<% out.print(Values.get("insecticides_cost_range")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Insecticides Image<span>*</span></label>
            <input type="file" name="insecticides_image" id="insecticides_image" style="width:300px">
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			      <textarea style="width:300px; height:100px;" name="insecticides_description" required><% out.print(Values.get("insecticides_description")); %></textarea>
          </div>
          <% if(!Values.get("insecticides_image").equals("")) { %>
          <div class="half_width">
			<img src="insecticidesImages/<% out.print(Values.get("insecticides_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Insecticides">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("insecticides_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="insecticides_id" name="insecticides_id" value="<% out.print(Values.get("insecticides_id")); %>"/>
        </form>
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

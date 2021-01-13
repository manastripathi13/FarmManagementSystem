<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Pesticides pesticidesDetails = new Pesticides();
	int pesticides_id = Integer.parseInt(request.getParameter ("pesticides_id"));
	HashMap Values =  pesticidesDetails.getPesticidesDetails(pesticides_id);	
%>
<script>
function validImage() {
	var val = $("#pesticides_image").val();
	var id = $("#pesticides_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Pesticides Image');
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
      <h2>Pesticides Form</h2>
		<form method="post" action="UploadPesticides" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Pesticides Name<span>*</span></label>
            <input type="text" name="pesticides_title" id="pesticides_title" value="<% out.print(Values.get("pesticides_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Cost Range<span>*</span></label>
            <input type="text" name="pesticides_cost_range" id="pesticides_cost_range" value="<% out.print(Values.get("pesticides_cost_range")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Pesticides Image<span>*</span></label>
            <input type="file" name="pesticides_image" id="pesticides_image" style="width:300px">
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			      <textarea style="width:300px; height:100px;" name="pesticides_description" required><% out.print(Values.get("pesticides_description")); %></textarea>
          </div>
          <% if(!Values.get("pesticides_image").equals("")) { %>
          <div class="half_width">
			<img src="pesticidesImages/<% out.print(Values.get("pesticides_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Pesticides">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("pesticides_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="pesticides_id" name="pesticides_id" value="<% out.print(Values.get("pesticides_id")); %>"/>
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

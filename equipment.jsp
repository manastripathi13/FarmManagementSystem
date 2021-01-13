<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Equipment equipmentDetails = new Equipment();
	int equipment_id = Integer.parseInt(request.getParameter ("equipment_id"));
	HashMap Values =  equipmentDetails.getEquipmentDetails(equipment_id);	
%>
<script>
function validImage() {
	var val = $("#equipment_image").val();
	var id = $("#equipment_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Equipment Image');
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
      <h2>Equipment Form</h2>
		<form method="post" action="UploadEquipment" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Equipment Name<span>*</span></label>
            <input type="text" name="equipment_title" id="equipment_title" value="<% out.print(Values.get("equipment_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Cost Range<span>*</span></label>
            <input type="text" name="equipment_cost_range" id="equipment_cost_range" value="<% out.print(Values.get("equipment_cost_range")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Equipment Image<span>*</span></label>
            <input type="file" name="equipment_image" id="equipment_image" style="width:300px">
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			      <textarea style="width:300px; height:100px;" name="equipment_description" required><% out.print(Values.get("equipment_description")); %></textarea>
          </div>
          <% if(!Values.get("equipment_image").equals("")) { %>
          <div class="half_width">
			<img src="equipmentImages/<% out.print(Values.get("equipment_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Equipment">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("equipment_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="equipment_id" name="equipment_id" value="<% out.print(Values.get("equipment_id")); %>"/>
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

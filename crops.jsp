<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Crops cropsDetails = new Crops();
	int crops_id = Integer.parseInt(request.getParameter ("crops_id"));
	HashMap Values =  cropsDetails.getCropsDetails(crops_id);	
%>
<script>
function validImage() {
	var val = $("#crops_image").val();
	var id = $("#crops_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Crops Image');
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
      <h2>Crops Form</h2>
		<form method="post" action="UploadCrops" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Crops Name<span>*</span></label>
            <input type="text" name="crops_title" id="crops_title" value="<% out.print(Values.get("crops_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Month<span>*</span></label>
            <input type="text" name="crops_month" id="crops_month" value="<% out.print(Values.get("crops_month")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Crops Image<span>*</span></label>
            <input type="file" name="crops_image" id="crops_image" style="width:300px">
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			      <textarea style="width:300px; height:100px;" name="crops_description" required><% out.print(Values.get("crops_description")); %></textarea>
          </div>
          <% if(!Values.get("crops_image").equals("")) { %>
          <div class="half_width">
			<img src="cropsImages/<% out.print(Values.get("crops_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Crops">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("crops_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="crops_id" name="crops_id" value="<% out.print(Values.get("crops_id")); %>"/>
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

<%@ include file="includes/header.jsp" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-`right:30px">
      <h2>Contact Us Form</h2>
        <form action="contact-confirmation.jsp" method="post">
          <div>
            <label for="email">Name <span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Email<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Phone<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Subject<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Message<span>*</span></label>
            <textarea name="comment" id="comment" cols="25" rows="5" required></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Submit">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
        </form>
        </div>
        <div style="float: right">
          <h2>Helpline Numbers</h2>
          <div style="font-weight:bold; font-size:19px; color:#FF0000">
            1800-400-4567<br>
            1800-400-1234<br>
            1800-400-6734<br>
            1800-400-2222<br><br>
          </div>
        	<div><img src="images/save1.png" style="width: 250px"></div><br>
        	<div><img src="images/save2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>

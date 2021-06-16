<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/move-top.js"></script>
</head>
<body>
<div class="footer">
   	  <div class="wrapper">	
			<div class="copy_right">
				<p>Compant Name © All rights Reseverd | Design by </p>
		   </div>
     </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#" id="toTop" style="display: block;">
	<span id="toTopHover" style="opacity: 1;"></span>
</a>
</body>
</html>
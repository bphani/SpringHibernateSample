<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="static/static/js/awsjsapi.js" ></script>
<script>
	$(document).ready(function() {
			
			var data = {};
			data.id = 234;
			data.content = "sdfdsfdsf";
			
			$.ajax({
				  url:"greeting/save",
				  type:"POST",
				  data:JSON.stringify(data),
				  contentType:"application/json; charset=utf-8",
				  dataType:"json",
				  success: function(data){
					  console.log( data );
				  }
			});
	});
</script>
</head>
<body>
	<h2>Hello World!</h2>
</body>
</html>

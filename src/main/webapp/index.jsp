<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="static/js/awsjsapi.js" ></script>
<script>
	$(document).ready(function() {
			
			var data = {};
			data.id = 234;
			data.content = "sdfdsfdsf";
			
			$.ajax({
				  url:"rest/getUsers",
				  type:"GET",
				  contentType:"application/json; charset=utf-8",
				  dataType:"json",
				  success: function(data){
					  $('#userSelect').append("<option>Select User</option>");
					  if(data && data.length>0){
						  for(i=0;i<data.length;i++){
								$('#userSelect').append("<option>"+data[i]+"</option>");
							}
						  $('#userSelect').on('change',function(){
							  var person = $(this).val();
								  $.ajax({
									  url:"rest/getUserLog",
									  type:"POST",
									  data:person,
									  contentType:"application/json; charset=utf-8",
									  dataType:"json",
									  success: function(data){
										  console.log( data );
										  var html = "<tr><th width='20%' >Version</th><th width='80%' >Log String</th></tr>";
										  for(i=0;i<data.length;i++){
											  html += "<tr><td>"+data[i].version+"</td><td>"+data[i].logString+"</td></tr>";
										  }
										  $('#results table').html(html);
									  }
								});
						  })
					  }
						
				  }
			});
	});
</script>
</head>
<body>
	<h2>Logger!!!</h2>
	<div class="loggedInPersons" >
		<select id="userSelect" ></select>
	</div>
	<div id='results' >
		<table >
			<tr>
				<th width="20%" >Version</th>
				<th width="80%" >Log String</th>
			</tr>
		</table>
	</div>
</body>
</html>

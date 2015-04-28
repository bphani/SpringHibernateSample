<html>
<head>
<script type="text/javascript" src="static/js/jquery-1.8.3.js" ></script>
   <script type="text/javascript" src="static/js/awsjsapi.js" ></script>
   
<style>
#input{
width:98%;
height:200px;
background:#d4d4d4;
}
td{
vertical-align: top;
border:1px solid #ccc;
}

#header{
	height:100px;
	background:#fff;
}

#exectable{
	height:200px;
}
#resultDiv{
	top:300px;
	left:0px;
	right:0px;
}

</style>
</head>
<body>
	<div id="header">
		<h2>Enter Javascript code below:</h2>
		<input type="button" id="execute" value="Execute" />
	</div>
	<div id="exectable">
		<textarea id="input">
		</textarea>
	</div>
	
	<div id="resultDiv">
		<pre id="result"></pre>
	</div>
</body>
	<script type="text/javascript">

		
		$(document).ready(function() {
			$("#execute").click(function(){
				
				var code = $("#input").val();
				if(code.trim()!=""){
					$("pre").html("<h2>Please wait</h2>");
					eval(code);
				}
			});
						
            
		});

		// formatJson() :: formats and indents JSON string
		function formatJson(val) {
			var retval = '';
			var str = val;
		    var pos = 0;
		    var strLen = str.length;
			var indentStr = '&nbsp;&nbsp;&nbsp;&nbsp;';
		    var newLine = '<br />';
			var char = '';
			
			for (var i=0; i<strLen; i++) {
				char = str.substring(i,i+1);
				
				if (char == '}' || char == ']') {
					retval = retval + newLine;
					pos = pos - 1;
					
					for (var j=0; j<pos; j++) {
						retval = retval + indentStr;
					}
				}
				
				retval = retval + char;	
				
				if (char == '{' || char == '[' || char == ',') {
					retval = retval + newLine;
					
					if (char == '{' || char == '[') {
						pos = pos + 1;
					}
					
					for (var k=0; k<pos; k++) {
						retval = retval + indentStr;
					}
				}
			}
			
			return retval;
		}
	</script>

</html>

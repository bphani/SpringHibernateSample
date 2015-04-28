function createVPC(name,cidrBlock){
	var res = process_request("GET",'/deployment-tool/awsrestservice/createvpc',null);
	return res.responseText;
}






function process_request(method,url1, data1)
{
	var response = null;
	data1=JSON.stringify(data1);
	$.ajax({
		 type : method,
		 url : url1,
		 data : data1,
		 dataType : "json",
		 contentType : "application/json; charset=utf-8",
		 async:   false,
		 cache : false,
		 success : function(ret) {
			 response = ret;
		 },
		 error : function(err) {
			 response = err;
		 }
	});
	return response;
};
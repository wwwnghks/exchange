$(function(){
	var languages = [];
	var strArr=[];
	$("#tag").keypress(function(event){
		if($("#tag").val().length>1){
			if($("#tag").val().startsWith("#")){
				strArr=$("#tag").val().split('#');		
				$.ajax({
					type:'GET',
					url:'https://api.instagram.com/v1/tags/search?q='+strArr[1]+'&access_token=7406779993.50c2d62.138a3d4bef004d0d8950cc6468f3a4b6',
					dataType : "json",
					cache : false,
					success:function(data){
						languages=[];
						$.each(data.data, function(index, data) {	
						languages.push('#'+data.name);
						});
					},	
					error:function(request,status,error){
						alert('ERROR : ' +request + ' ' + status + ' ' + error);
					}
				})
				$("#tag").autocomplete({
					source : languages,
					minLength: 2
				});
			}
		}
	})	
});
function hashPut(){
	var hashArr = $("#hash_result").html().split('#');
	if(hashArr.length<6){
		$("#hash_result").append($("#tag").val());
		$("#hidden_hash").val($("#hash_result").html());
	}else{
		alert('태그는 5개만 등록가능합니다.');
	}
}

function resetHash(){
	$("#hash_result").html('');
}
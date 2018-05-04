$(function(){
			$("#createBrand").click(function(){
				$.ajax({
					type:'GET',
					url:'createBrand',
					dataType : "json",
					cache : false,
					data : {
	 					sec_idx : $("#sec_name").val(),
						bra_name : $("#bra_name").val()
	 				},
					success:function(data){
						if(data==1){
							alert("브랜드 카테고리에 등록되었습니다.");
							$("#brand").find("option").remove();
				 			$("#brand").append("<option selected='selected' disabled='disabled'>브랜드 분류</option>");
				 			$.ajax({
				 				type:'GET',
				 				url:'brand',
				 				dataType : "json",
				 				cache : false,
				 				data : {
				 					sec_idx : $("#sec_name").val()
				 				},
				 				success:function(data){
				 					$.each(data.brand_Category, function(index, brand_Category) {	
				 						$('#brand').append('<option value='+brand_Category.bra_idx+'>'+brand_Category.bra_name+'</option>');
				 					});
				 				},
				 				error:function(request,status,error){
				 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
				 				}
				 			});
				 			$("#brand").append("<option value='self'>직접입력</option>");
						}else{	
							alert("브랜드 카테고리에 존재합니다.카테고리에서 선택해주세요");
						}
					},
					error:function(request,status,error){
						alert('ERROR : ' +request + ' ' + status + ' ' + error);
					}
				});
			});
		});
		

	function category01(){
		$.ajax({
			type:'GET',
			url:'category01',
			dataType : "json",
			cache : false,
			success:function(data){
				$.each(data.first_Category, function(index, first_Category) {
					$('#fir_name').append('<option value='+first_Category.fir_idx+'>'+first_Category.fir_name+'</option>');
				});
			},
			error:function(request,status,error){
				alert('ERROR : ' +request + ' ' + status + ' ' + error);
			}
		});
	};
 	$(function category02(){
 		$('#fir_name').change(function(){
 			$("#bra_name").val('');
 			$("#sec_name").find("option").remove();
 			$("#sec_name").append("<option selected='selected' disabled='disabled'>2차분류</option>");
 			$.ajax({
 				type:'GET',
 				url:'category02',
 				dataType : "json",
 				cache : false,
 				data : {
 					fir_idx : this.value
 				},
 				success:function(data){
 					$.each(data.second_Category, function(index, second_Category) {	
 						$('#sec_name').append('<option value='+second_Category.sec_idx+'>'+second_Category.sec_name+'</option>');
 					});
 				},
 				error:function(request,status,error){
 					
 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 				}
 			});
 		});
	}); 
 	
 	$(function brand(){
 		$('#sec_name').change(function(){
 			$("#bra_name").val('');
 			$("#brand").find("option").remove();
 			$("#brand").append("<option selected='selected' disabled='disabled'>브랜드 분류</option>");
 			$.ajax({
 				type:'GET',
 				url:'brand',
 				dataType : "json",
 				cache : false,
 				data : {
 					sec_idx : this.value
 				},
 				success:function(data){
 					$.each(data.brand_Category, function(index, brand_Category) {	
 						$('#brand').append('<option value='+brand_Category.bra_idx+'>'+brand_Category.bra_name+'</option>');
 					});
 				},
 				error:function(request,status,error){
 					
 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 				}
 			});
 			$("#brand").append("<option value='self'>직접입력</option>");
 		});
 		
	});  
 	
 	$(function brand(){
 		$('#brand').change(function(){
 			if($("#brand").val()=='self'){
 				$("#bra_name").val('');
 			}else{
 				$.ajax({
 	 				type:'GET',
 	 				url:'brandSelect',
 	 				dataType : "json",
 	 				cache : false,
 	 				data : {
 	 					bra_idx : $("#brand").val()
 	 				},
 	 				success:function(data){
 	 					$("#bra_name").val(data.brandSelect[0].bra_name);
 	 				},
 	 				error:function(request,status,error){
 	 					alert('ERROR : ' +request + ' ' + status + ' ' + error);
 	 				}
 	 			});
 			}
 		});
	});  

	$(function(){
		category01();

	});
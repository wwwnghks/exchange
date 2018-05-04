function img01_change(){
   			$("#preview_img").attr("src",$("#img01").attr("src"));
   			$('#file_div01').hide();
   			$('#file_div02').hide();
   			$('#file_div03').hide();
   			$('#file_div01').show();
   		 }
   		 function img02_change(){
   			$("#preview_img").attr("src",$("#img02").attr("src"));
   			$('#file_div01').hide();
   			$('#file_div02').hide();
   			$('#file_div03').hide();
   			$('#file_div02').show();
   		 }
   		 function img03_change(){
   			$("#preview_img").attr("src",$("#img03").attr("src"));
   			$('#file_div01').hide();
   			$('#file_div02').hide();
   			$('#file_div03').hide();
   			$('#file_div03').show();
   		 }
	 	
	 	
		$(function file01_change(){
	 		$('#inputGroupFile01').change(function(event){
	 			if($('#inputGroupFile01').val()!=''){
	 				$('#file_div01').hide();
	 				$('#file_div02').show();
	 			}
	 		})
		})
		
		$(function file02_change(){
	 		$('#inputGroupFile02').change(function(event){
	 			if($('#inputGroupFile02').val()!=''){
	 				$('#file_div02').hide();
	 				$('#file_div03').show();
	 			}
	 		})
		})
 $(document).ready(function() {
        	var files=new Array();
            var upload01 = $('#inputGroupFile01')[0],
           		upload02 = $('#inputGroupFile02')[0],
           		upload03 = $('#inputGroupFile03')[0],
                imgbox = document.getElementById('imgbox');
            upload01.onchange = function(e) {
            	if($("#inputGroupFile01").val()==''){
            		$("#preview_img").removeAttr("src");
            		$("#img01").removeAttr("src");
            		if($("#img01").attr("src")==null){
            			$("#li_img01").hide();
            		}
            	}
                e.preventDefault();
                var file = upload01.files[0],
                reader = new FileReader();
                if(file!=null){
                reader.onload = function(event) {
                	if($("#img01").attr("src")!=null){
                		    $("#img01").attr({'src':event.target.result,'style':'width:55px; height:55px'})  	
                  			$("#preview_img").attr("src",event.target.result);
                		    $("#li_img01").show();
                		    $("#preview_img").show();
                	}else{
                		$("#preview_img").attr("src",event.target.result);
                		$("#img01").attr("src",event.target.result);
                		 $("#li_img01").show();
                		 $("#preview_img").show();
                	}
                };
                reader.readAsDataURL(file);
                return false;
                }
            };
            upload02.onchange = function(e) {
            	if($("#inputGroupFile02").val()==''){
            		$("#preview_img").removeAttr("src");
            		$("#img02").removeAttr("src");
            		if($("#img02").attr("src")==null){
            			$("#li_img02").hide();
            		}
            	}
                e.preventDefault();
                var file = upload02.files[0],    
                reader = new FileReader();
                if(file!=null){
                reader.onload = function(event) {
                	if($("#img02").attr("src")!=null){
            		    $("#img02").attr({'src':event.target.result,'style':'width:55px; height:55px'})  	
              			$("#preview_img").attr("src",event.target.result);
            		    $("#li_img02").show();
            		    $("#preview_img").show();
            		}else{
            			$("#preview_img").attr("src",event.target.result);
            			$("#img02").attr("src",event.target.result);
            			$("#li_img02").show();
            			$("#preview_img").show();
            		}
                };
                reader.readAsDataURL(file);
                return false;
                }
            };
            upload03.onchange = function(e) {
            	if($("#inputGroupFile03").val()==''){
            		$("#preview_img").removeAttr("src");
            		$("#img03").removeAttr("src");
            		if($("#img03").attr("src")==null){
            			$("#li_img03").hide();
            		}
            	}
                e.preventDefault();
                var file = upload03.files[0],
                
                reader = new FileReader();
                if(file!=null){
                reader.onload = function(event) {
                	if($("#img03").attr("src")!=null){
            		    $("#img03").attr({'src':event.target.result,'style':'width:55px; height:55px'})  	
              			$("#preview_img").attr("src",event.target.result);
            		    $("#li_img03").show();
            		    $("#preview_img").show();
            		}else{
            			$("#preview_img").attr("src",event.target.result);
            			$("#img03").attr("src",event.target.result);
            			$("#li_img03").show();
            			$("#preview_img").show();
            		}
                };
                reader.readAsDataURL(file);
                return false;
                }
            };
        });

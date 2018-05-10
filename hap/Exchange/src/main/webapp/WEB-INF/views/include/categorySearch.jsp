<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
$(function Mcategory01() {
    var ctx = '<%=request.getContextPath()%>';
    function getContextPath(){return ctx;}
    $.ajax({
       type : 'GET',
       url : getContextPath()+'/Mcategory01',
       dataType : "json",
       cache : false,
       success : function(data) {
          $.each(data.first_Category, function(index, first_Category) {
             $('#Mfir_name').append('<li onmouseenter="over_fir('+first_Category.fir_idx+');"><a href='+getContextPath()+'/product/productCateSearch?search='+first_Category.fir_name+'&type=first&product='+first_Category.fir_idx+'>'+first_Category.fir_name+'</a><ul id='+first_Category.fir_idx+'></ul></li>')
          }); 
       },
       error : function(data){
       console.log('Error: ' + data);
       }
    });
    
    
    
 });

 	function over_fir(idx){
		var ctx = '<%=request.getContextPath()%>';
      function getContextPath(){return ctx;}
 		$.ajax({
          type : 'GET',
          url : getContextPath()+'/Mcategory02',
          dataType : "json",
          cache : false,
          data : {
              fir_idx : idx
           },
          success : function(data) {
          	 $("#"+idx).empty();
           	 $.each(data.second_Category, function(index, second_Category) {
           		 $("#"+idx).append('<li onmouseenter="over_sec('+second_Category.sec_idx+')"><a href='+getContextPath()+'/product/productCateSearch?search='+second_Category.sec_name+'&type=second&product='+second_Category.sec_idx+'>'+second_Category.sec_name+'</a><ul id=sec_'+second_Category.sec_idx+'></ul></li>');
           	 });
          },
          error : function(data){
          console.log('Error: ' + data);
          }
       });
 	}
 function over_sec(idx){
	   var ctx = '<%=request.getContextPath()%>';
     function getContextPath(){return ctx;}
		$.ajax({
         type : 'GET',
         url : getContextPath()+'/brand',
         dataType : "json",
         cache : false,
         data : {
             sec_idx : idx
          },
         success : function(data) {
         	 $("#sec_"+idx).empty();
          	 $.each(data.brand_category, function(index, brand_category) {
          		 $("#sec_"+idx).append('<li><a href='+getContextPath()+'/product/productCateSearch?search='+brand_category.bra_name+'&type=brand&product='+brand_category.bra_idx+'>'+brand_category.bra_name+'</a></li>');
          	 });
         },
         error : function(data){
         console.log('Error: ' + data);
         }
      });
 }

</script>

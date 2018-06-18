<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<%@include file="../include/style.jsp"%>
</head>
<body>
   <div id="body-bg">
      <div id="content">
         <div class="container background-white">
            <div class="row margin-vert-30">
               <div class="col-md-12">
<!--              
 -->
                  <form action="declarationCreate" method="POST" enctype="multipart/form-data">
                     <input type="hidden" name="mem_idx" value="${session_member.mem_idx}">
                     <input type="hidden" name="pro_idx" value="${pro_idx}">
                     <input type="hidden" name="man_idx" value="${man_idx}">
                     <%-- <input type="hidden" name="msg_idx" value="${msg_idx}"> --%>
                     <table style="width: 550px" class="table" >
                        <tr>
                           <td id="man_name">&nbsp;&nbsp;<strong>수신인</strong></td><%-- value="${man_name}" --%>
                           <td>&nbsp;&nbsp;관리자</td>
                        </tr>
                        <tr align="center">
                           <td id="dec_msg_title"><strong>제 목</strong></td>
                           <td><input name="dec_msg_title" type="text" size="72"
                              maxlength="100" /></td>
                        </tr>
                        <tr align="center">
                           <td id="dec_msg_contents"><strong>신고사유</strong></td>
                           <td><textarea name="dec_msg_contents" cols="70" rows="20"></textarea>
                           </td>
                        </tr>
                        <tr align="center" valign="middle">
                           <td colspan="5"><input type="reset" class="btn btn-lm" style="background-color: #ee627d; color: white;" value="초기화" >
                              <input type="submit" class="btn btn-lm" style="background-color: #09d2e5; color: white;" value="전송" > <input type="button"
										 class="btn btn-lm" style="background-color: #b4b6c1; color: white;" value="닫기" onclick="window.close();"></td>
                        </tr>
                     </table>
                  </form>

               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>
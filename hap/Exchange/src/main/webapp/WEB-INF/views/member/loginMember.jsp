<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
   content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<%@include file="../include/style.jsp"%>
<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_loader{background-color:#f6f7f9;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear2:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;bottom:0;left:0;right:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29487d;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f9;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
.fb_customer_chat_bounce_in{animation-duration:250ms;animation-name:fb_bounce_in}.fb_customer_chat_bounce_out{animation-duration:250ms;animation-name:fb_fade_out}.fb_customer_chat_bubble_pop_in{animation-duration:250ms;animation-name:fb_customer_chat_bubble_bounce_in_animation}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_mobile_overlay_active{background-color:#fff;height:100%;overflow:hidden;position:fixed;visibility:hidden;width:100%}@keyframes fb_fade_out{from{opacity:1}to{opacity:0}}@keyframes fb_bounce_in{0%{opacity:0;transform:scale(.8, .8);transform-origin:100% 100%}10%{opacity:.1}20%{opacity:.2}30%{opacity:.3}40%{opacity:.4}50%{opacity:.5}60%{opacity:.6}70%{opacity:.7}80%{opacity:.8;transform:scale(1.03, 1.03)}90{opacity:.9}100%{opacity:1;transform:scale(1, 1)}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}</style>

<style>
#frm_login{
background-color: #fff; 
width: 500px;
margin: 0 auto;
}
</style>
</head>
<body>
<div id="div_shadow">
<div class="loader"></div>
</div>

<div class="warp">
   <div class="header2"><a href="/exchange"><img src="/exchange/resources/HTML/assets/img/logo3.png" alt="Logo" style="width: 140px;"></a></div>
   <div class="container2">
      <div class="row2">
         <form id="frm_login" method="POST" action="loginMember" style="height: 710px;">
         <!-- <input name="retURL" type="hidden" value="https://www.diningcode.com/"> -->
         <div class="login">
            <div class="title bb-gray">로그인 및 회원가입</div>
            <div class="fs-15 fw-b" style="padding:24px 0;">
               로그인을 통해  다양한 혜택을 누리세요.
            </div>
            <div>
               <input id="txt_id" type="text" class="input-text" placeholder="아이디 입력" style="margin-bottom:7px;"name="mem_id">
               <input id="txt_pw" type="password" class="input-text" placeholder="비밀번호 입력" name="mem_pw">
            </div>
            <div style="padding:24px 0;">
               <div class="fl" style="margin-left: 20px;">
                  <label class="checkbox"><input id="ckb_auto" type="checkbox" value="Y" checked="">
                  <i class="check-icon"></i> <span class="fs-13 fw-b">로그인상태 유지</span></label>
               </div>
               <div class="fr" style="padding-top:3px; margin-right:40px;"><a href="<%=request.getContextPath()%>/member/memberPwFind"> |&nbsp;비밀번호 찾기</a></div>
               <div class="fr" style="padding-top:3px;"><a href="<%=request.getContextPath()%>/member/memberIdFind">아이디 찾기  &nbsp; </a></div>
               <div class="clear2"></div>
            </div>
            <button type="submit" class="btn2 btn-black">로그인</button>
            <div style="padding:14px 0;">
               <div class="fl" style="border-bottom:solid #E0E0E0 1px; width:180px; height:7px;"></div>
               <div class="fl tc" style="width:40px;">또는</div>
               <div class="fr" style="border-bottom:solid #E0E0E0 1px; width:180px; height:7px;"></div>
               <div class="clear2"></div>
            </div>
            
            
            <div class="row">
                        <div id="naverIdLogin" class=""></div>
                        <div class="">
                           <a id="kakao-login-btn" class=""></a> <a
                              href="http://developers.kakao.com/logout"></a>
                        </div>
                     </div>
           <!--  <button id="btn_facebook" type="button" class="btn2 btn-facebook">페이스북으로 로그인</button> -->
            
            
            <div style="margin:24px 0 100px 0; padding:24px 0; border:solid #E0E0E0 1px;">
               <span class="fw-b">아직 회원이 아니신가요?</span><br>
               <a href="<%=request.getContextPath()%>/member/newMember"><button id="btn_intro" type="button" class="btn2 btn-w200" style="margin-top:12px;">회원가입</button></a>
            </div>
         </div>
         </form>
      </div>
   </div>
   
   <%@include file="../include/jsFile.jsp"%>
   <script type="text/javascript"
      src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
      charset="utf-8"></script>


   <script type="text/javascript">
      var naverLogin = new naver.LoginWithNaverId(
            {
               clientId : "QuDRvcnM4lcWAokv8mOE",
               callbackUrl : "http://localhost:8080/exchange/",
               isPopup : false, /* 팝업을 통한 연동처리 여부 */
               callbackHandle : false,
               loginButton : {
                  color : "green",
                  type : 5,
                  height : 48
               }
            /* 로그인 버튼의 타입을 지정  */
            });

      /* 설정정보를 초기화하고 연동을 준비  */
      naverLogin.init();
   </script>
   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script type='text/javascript'>
      //<![CDATA[
      // 사용할 앱의 JavaScript 키를 설정해 주세요.
      Kakao.init('01573e66ef996be032057b0b4df7039e');
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
         container : '#kakao-login-btn',
         success : function(authObj) {
            // 로그인 성공시, API를 호출합니다.
            Kakao.API.request({
                url: '/v1/user/me',
               success : function(res) {
                  var jsonval = JSON.parse(JSON.stringify(res));
/*                   alert(jsonval.kaccount_email);
                  alert(jsonval.properties.thumbnail_image);
                  alert(jsonval.properties.nickname); */
                  $.ajax({
                     type : 'GET',
                     url : 'cacaocreate',
                     cache : false,
                     data : {
                        mem_id : jsonval.kaccount_email+'_KaKao',
                        mem_pw : 'KaKao',
                        mem_name : jsonval.properties.nickname,
                        mem_nickname : jsonval.properties.nickname+'_KaKao',
                        mem_photo : jsonval.properties.thumbnail_image,
                     },
                     success : function(data) {
                        window.location='/exchange';
                     },
                     error : function(request, status, error) {
                        alert('ERROR : ' + request + ' ' + status
                              + ' ' + error);
                     }
                  });

               },
               fail : function(error) {
                  alert(JSON.stringify(error));
               }
            });

         },
         fail : function(err) {
            alert(JSON.stringify(err));
         }
      });
      //]]>
   </script>
   
   <div class="footer2">
      © 2018 Exchange ·
      <a href="/intro.php">익스체인지 소개</a> ·
      <a href="/policy.service.php">이용약관</a> ·
      <a href="/policy.privacy.php">개인정보처리방침</a> ·
      <a href="mailto:contact@diningcode.com">문의</a>
   </div>
</div>

<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/EIL5DcDc3Zh.js?version=42#channel=f317314b8b5e848&amp;origin=https%3A%2F%2Fwww.diningcode.com" style="border: none;"></iframe></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div></div>

</body>
</html>
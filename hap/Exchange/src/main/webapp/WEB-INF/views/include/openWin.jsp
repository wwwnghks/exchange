<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function openWin1() {
		window
				.open(
						"http://localhost:8080/exchange/message/messageCreate?mem_nickname=${ownerMember.mem_nickname }&pro_idx=${productOne.pro_idx}",
						"쪽지 보내기",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
	function openWin2() {
		window
				.open(
						"http://localhost:8080/exchange/declaration/declarationCreate?man_idx=1&pro_idx=${productOne.pro_idx}",
						"신고하기",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
	function openWin3() {
		window
				.open(
						"http://localhost:8080/exchange/trade/tradeCreate?oppro_idx=${productOne.pro_idx}",
						"거래신청",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
</script>

var check01 = false;
var check02 = false;
var check03 = false;
var check04 = false;

function pwCh() {
	var inputed01 = $('#pwCheck').val();
	var inputed02 = $('#pwText').val();
	if (inputed01 == inputed02) {
		$('#pwCh').html("일치합니다");
		$('#pwCh').css('color', 'blue');
		check01 = true;
		if (check01 && check02 && check03 && check04) {
			$('#reg_btn').removeAttr('disabled');
		}
	} else {
		$('#pwCh').html("일치하지 않습니다.");
		$('#pwCh').css('color', 'red');
		check01 = false;
		$('#reg_btn').attr('disabled', 'disabled');
	}
}

function pw() {
	var inputed01 = $('#pwCheck').val();
	var inputed = $('#pwText').val();
	if (inputed01 == inputed) {
		$('#pwCh').html("일치합니다");
		$('#pwCh').css('color', 'blue');
		check01 = true;
		if (check01 && check02 && check03 && check04) {
			$('#reg_btn').removeAttr('disabled');
		}
	} else {
		$('#pwCh').html("일치하지 않습니다.");
		$('#pwCh').css('color', 'red');
		check01 = false;
		$('#reg_btn').attr('disabled', 'disabled');
	}

	if (inputed.length < 8) {
		$('#pw').html("8자 이상 입력하세요.");
		$('#pw').css('color', 'red');
		check02 = false;
		$('#reg_btn').attr('disabled', 'disabled');
	} else {
		$('#pw').html("사용 가능합니다");
		$('#pw').css('color', 'blue');
		check02 = true;
		if (check01 && check02 && check03 && check04) {
			$('#reg_btn').removeAttr('disabled');
		}
	}
}

function id_check() {
	var inputed = $('#id').val();
	$.ajax({
		data : {
			"id" : inputed
		},
		url : "checkId",
		dataType : 'json',
		success : function(data) {
			if (data.result == "length") {
				$('#logCh').html("4자 이상 입력하세요.");
				$('#logCh').css('color', 'red');
				check03 = false;
				$('#reg_btn').attr('disabled', 'disabled');
			} else {
				if (data.result == "true") {
					$('#logCh').html("사용 불가능한 아이디입니다.");
					$('#logCh').css('color', 'red');
					check03 = false;
					$('#reg_btn').attr('disabled', 'disabled');
				} else {
					$('#logCh').html("사용 가능한 아이디입니다.");
					$('#logCh').css('color', 'blue');
					check03 = true;
					if (check01 && check02 && check03 && check04) {
						$('#reg_btn').removeAttr('disabled');
					}
				}
			}
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	});
}

function nick_check() {
	var inputed = $('#nick').val();
	$.ajax({
		data : {
			"nick" : inputed
		},
		url : "checkNick",
		dataType : 'json',
		success : function(data) {
			if (data.result == "length") {
				$('#nickCh').html("필수정보입니다.");
				$('#nickCh').css('color', 'red');
				check04 = false;
				$('#reg_btn').attr('disabled', 'disabled');
			} else {
				if (data.result == "true") {
					$('#nickCh').html("사용 불가능한 닉네임입니다.");
					$('#nickCh').css('color', 'red');
					check04 = false;
					$('#reg_btn').attr('disabled', 'disabled');
				} else {
					$('#nickCh').html("사용 가능한 닉네임입니다.");
					$('#nickCh').css('color', 'blue');
					check04 = true;
					if (check01 && check02 && check03 && check04) {
						$('#reg_btn').removeAttr('disabled');
					}
				}
			}
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	});
}
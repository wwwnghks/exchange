<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}
</style>
<body>

	<!-- <script>
var address = ${address};
var afterAddress = address.split(" ");
afterAddress[0]
alert(afterAddress[0])
</script> -->
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
		<ul id="category">
			<li id="BK9" data-order="0"><span class="category_bg bank"></span>
				은행</li>
			<li id="MT1" data-order="1"><span class="category_bg mart"></span>
				마트</li>
			<li id="PM9" data-order="2"><span class="category_bg pharmacy"></span>
				약국</li>
			<li id="OL7" data-order="3"><span class="category_bg oil"></span>
				주유소</li>
			<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
				카페</li>
			<li id="CS2" data-order="5"><span class="category_bg store"></span>
				편의점</li>
		</ul>
	</div>

	<!-- <div id="map" style="width: 100%; height: 350px;"></div> -->

	<p id="result"></p>
	<input type="button" id="button" value='바꾸자'
		onclick="findMidPosition()" style="display: none;">
	<!-- <button href="#" onclick="findMidPosition();">바꾸자</button> -->

	<script src="//code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			//body가 다실행되면 load가 실행됩니다.
			$(window).load(function() {
				//버튼 강제 클릭 이벤트
				$("#button").trigger('click');
			});
			//버튼 클릭시 이벤트
			$("#button").click(function() {
			
			})
		});
		</script>


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8b1b63e6bd72a633782cf5b53aa1344a&libraries=services"></script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표 
			level : 8
		// 지도의 확대 레벨
		};

		//지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		var midPoint = [];
		var markersPos = [];

		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		//주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'${afterAddress}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === daum.maps.services.Status.OK) {

								var coords = new daum.maps.LatLng(result[0].y,
										result[0].x);

								markersPos.push(coords);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new daum.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new daum.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">우리집</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								/* map.setCenter(coords); */
							}
						});

		geocoder
				.addressSearch(
						'${afterLocation}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === daum.maps.services.Status.OK) {

								var coords = new daum.maps.LatLng(result[0].y,
										result[0].x);
								/* alert(coords.getLat()) */

								markersPos.push(coords);

								/* alert(markersPos[0].coords.result[0].y);
								alert(markersPos[0].coords.result.x); */

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new daum.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new daum.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">물건장소</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
		var newPosLat = 0;
		var newPosLng = 0;

		function findMidPosition() {

			/* var imageSrc = '/images/location-pin_red.png'; // 마커이미지의 주소입니다
			var imageSize = new daum.maps.Size(32, 32); // 마커이미지의 크기입니다
			var imageOption = {
				offset : new daum.maps.Point(15, 32)
			}; // 마커이미지의 옵션입니다. 

			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imageOption); */

			var marker1Lat = markersPos[0].getLat() * 1;
			var marker1Lng = markersPos[0].getLng() * 1;
			var marker2Lat = markersPos[1].getLat() * 1;
			var marker2Lng = markersPos[1].getLng() * 1;
			newPosLat = ((marker1Lat + marker2Lat) / 2).toFixed(4);
			newPosLng = ((marker1Lng + marker2Lng) / 2).toFixed(4);

			/* 	alert(markersPos[0]);
				alert(markersPos[0].getLat());
				alert(markersPos[0].getLng());
				alert(markersPos[1]);
				alert(markersPos[1].getLat());
				alert(markersPos[1].getLng()); */
			/* alert(markersPos[1]); */

			/* alert(newPosLat + "," + newPosLng); */

			var marker = new daum.maps.Marker({
				map : map,
			/* image : markerImage */
			});

			if (midPoint.length == 1) {
				midPoint[0].setMap(null);
				midPoint.pop();
			}

			/* map.setCenter(new daum.maps.LatLng(newPostLat,newPosLng)); */

			midPoint.push(marker);
			marker.setPosition(new daum.maps.LatLng(newPosLat, newPosLng));
			marker.setMap(map);

			// 원을 그려줌 
			var circles = {}; // 검색할 범위에 원을 그려줌

			circles = new daum.maps.Circle({
				center : new daum.maps.LatLng(newPosLat, newPosLng), // 원의 중심좌표 입니다
				radius : 2000, // 미터 단위의 원의 반지름입니다
				strokeWeight : 5, // 선의 두께입니다
				strokeColor : '#75B8FA', // 선의 색깔입니다
				strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				strokeStyle : 'dashed', // 선의 스타일 입니다
				fillColor : '#CFE7FF', // 채우기 색깔입니다
				fillOpacity : 0.7
			// 채우기 불투명도 입니다
			});

			circles.setMap(map);
			map.setCenter(new daum.maps.LatLng(newPosLat, newPosLng));
			map.setLevel(8);
			$('#category').show(); // 중점을 찾고 선택할 수 있는 카테고리를 보여줍니다

		}

		var placeOverlay = new daum.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places(map);

		// 지도에 idle 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'idle', searchPlaces);

		// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		contentNode.className = 'placeinfo_wrap';

		// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
		addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

		// 커스텀 오버레이 컨텐츠를 설정합니다
		placeOverlay.setContent(contentNode);

		// 각 카테고리에 클릭 이벤트를 등록합니다
		addCategoryClickEvent();

		// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
		function addEventHandle(target, type, callback) {
			if (target.addEventListener) {
				target.addEventListener(type, callback);
			} else {
				target.attachEvent('on' + type, callback);
			}
		}

		// 카테고리 검색을 요청하는 함수입니다
		function searchPlaces() {
			if (!currCategory) {
				return;
			}

			// 커스텀 오버레이를 숨깁니다 
			placeOverlay.setMap(null);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			ps.categorySearch(currCategory, placesSearchCB, {
				location : new daum.maps.LatLng(newPosLat, newPosLng),
				radius : 2000
			});
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
				displayPlaces(data);
			} else if (status === daum.maps.services.Status.ZERO_RESULT) {
				// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

			} else if (status === daum.maps.services.Status.ERROR) {
				// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

			}
		}

		// 지도에 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			var order = document.getElementById(currCategory).getAttribute(
					'data-order');

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = addMarker(new daum.maps.LatLng(places[i].y,
						places[i].x), order);

				// 마커와 검색결과 항목을 클릭 했을 때
				// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
				(function(marker, place) {
					daum.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, places[i]);
			}
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, order) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new daum.maps.Size(27, 28), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
				spriteOrigin : new daum.maps.Point(46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new daum.maps.Point(11, 28)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new daum.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
		function displayPlaceInfo(place) {
			var content = '<div class="placeinfo">'
					+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
					+ place.place_name + '</a>';

			if (place.road_address_name) {
				content += '    <span title="' + place.road_address_name + '">'
						+ place.road_address_name
						+ '</span>'
						+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
						+ place.address_name + ')</span>';
			} else {
				content += '    <span title="' + place.address_name + '">'
						+ place.address_name + '</span>';
			}

			content += '    <span class="tel">' + place.phone + '</span>'
					+ '</div>' + '<div class="after"></div>';

			contentNode.innerHTML = content;
			placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
			placeOverlay.setMap(map);
		}

		// 각 카테고리에 클릭 이벤트를 등록합니다
		function addCategoryClickEvent() {
			var category = document.getElementById('category'), children = category.children;

			for (var i = 0; i < children.length; i++) {
				children[i].onclick = onClickCategory;
			}
		}

		// 카테고리를 클릭했을 때 호출되는 함수입니다
		function onClickCategory() {
			var id = this.id, className = this.className;

			placeOverlay.setMap(null);

			if (className === 'on') {
				currCategory = '';
				changeCategoryClass();
				removeMarker();
			} else {
				currCategory = id;
				changeCategoryClass(this);
				searchPlaces();
			}
		}

		// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
		function changeCategoryClass(el) {
			var category = document.getElementById('category'), children = category.children, i;

			for (i = 0; i < children.length; i++) {
				children[i].className = '';
			}

			if (el) {
				el.className = 'on';
			}
		}
	</script>




	<!-- <script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.49794199999999, 127.02762099999995), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		
		
		var midPoint = [];
		
		var mem_address = ${afterAddress}
		var pro_location = ${afterLocation}
		
		var geocoder = new daum.maps.services.Geocoder();

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
			// 마커를 생성합니다
			var geoMarker = new daum.maps.Marker({
				map : map,
				position : locPosition
			});
			var geoiwContent = message// 인포윈도우에 표시할 내용
			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				content : geoiwContent
			});
			// 인포윈도우를 마커위에 표시합니다
			infowindow.open(map, geoMarker);
			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위치에 마커를 추가하는 함수
			//addMarker(mouseEvent.latLng);
			var length = markersPos.length;

			if (length > 1) {
				alert("두개만 찍을 수 이뜸");
			} else {
				// 마커를 생성합니다
				addMarker(mouseEvent.latLng);
			}
		});

		// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
		var markers = [];
		var markersPos = []; // marker의 위치만을 가지고 있을 배열
		var iwContents = []; // 인포 윈도우 객체를 가지고 있을 배열 

		// 마커를 생성하고 지도위에 표시하는 함수입니다
		function addMarker(position) {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : position,
				draggable : true
			});

			var markerPos = { // 마커의 위치 정보
				newLat : position.getLat().toFixed(4),
				newLng : position.getLng().toFixed(4)
			};

			var iwContent = new daum.maps.InfoWindow({
				position : position,
				content : "마커의 위치는 " + position.getLat().toFixed(4) + ","
						+ position.getLng().toFixed(4) + "입니다.",
				removable : true
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			iwContent.open(map, marker);
			// 생성된 마커를 배열에 추가합니다
			markers.push(marker);
			iwContents.push(iwContent);
			markersPos.push(markerPos);

			var draggedMarker = {};
			var markerNum = 0;

			daum.maps.event.addListener(marker, 'dragstart', function() {
				draggedMarker.Lat = marker.getPosition().getLat().toFixed(4);
				draggedMarker.Lng = marker.getPosition().getLng().toFixed(4);

				for (var i = 0; i < markersPos.length; i++) { // 드래그 되는 마커를 알기 위해
					if (draggedMarker.Lat == markersPos[i].newLat
							&& draggedMarker.Lng == markersPos[i].newLng) {
						markerNum = i;
					}
				}
			});

			daum.maps.event.addListener(marker, 'dragend', function() {
				// 출발 마커의 드래그가 종료될 때 인포윈도우의 내용을 바꿔주면서 기존의 인포윈도우는 닫고 새 위치에 창을 열어줍니다
				iwContent.close(map, marker); // 기존의 인포윈도우 닫기 

				iwContent = new daum.maps.InfoWindow(
						{ // 인포 윈도우 내용 바꾸기기
							position : marker.getPosition(),
							content : "마커의 위치는 "
									+ marker.getPosition().getLat().toFixed(4)
									+ ","
									+ marker.getPosition().getLng().toFixed(4)
									+ "입니다.",
							removable : true
						});

				var newPos = { //드래그 된 마커의 새 위치 정보
					newLat : marker.getPosition().getLat().toFixed(4),
					newLng : marker.getPosition().getLng().toFixed(4)
				};
				markersPos[markerNum] = newPos;
				iwContent.open(map, marker); //새 내용으로 오픈
				iwContents[markerNum] = iwContent; // 새 내용 삽입
			});
		}

		function findMidPosition() {
			// 버튼 누르면 두 지점의 중점을 찾음
			if (markersPos.length != 2) {
				alert("지도에 마커를 두개 찍어주세용");
			} else {
				// 중점 계산하기
				var marker1Lat = markersPos[0].newLat * 1;
				var marker1Lng = markersPos[0].newLng * 1;
				var marker2Lat = markersPos[1].newLat * 1;
				var marker2Lng = markersPos[1].newLng * 1;
				var newPosLat = ((marker1Lat + marker2Lat) / 2).toFixed(4);
				var newPosLng = ((marker1Lng + marker2Lng) / 2).toFixed(4);

				alert(newPosLat + "," + newPosLng);

				// 두 마커간의 중점 찍는 거
				var marker = new daum.maps.Marker({
					map : map
				});

				if (midPoint.length == 1) {
					midPoint[0].setMap(null);
					midPoint.pop();
				}
				midPoint.push(marker);
				marker.setPosition(new daum.maps.LatLng(newPosLat, newPosLng));
				marker.setMap(map);

				/* midPoint.push(marker);
				marker.setPosition(new daum.maps.LatLng(newPosLat, newPosLng));
				marker.setMap(map); */
			}
		}
	</script>
 -->



</body>
</html>

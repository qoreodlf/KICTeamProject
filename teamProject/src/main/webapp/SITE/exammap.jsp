<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자격증 공부하자</title>
    <!-- <link rel="stylesheet" href="css/exammap.css"> -->
    <script src="locationSelect.js"></script>
    <style>
    
    @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500,700,900&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.container{
    position: relative;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    left: 7%;
    top: 10%;
}
.container h2{
    width: 100%;
    justify-content: center;
    align-items: center;
    font-size: 1.77rem;
    color: #414566;
    font-family: 'Noto Sans KR','S-CoreDream-7','Malgun Gothic','돋움',dotum,sans-serif;
}
.maptainer{
    display: flex;
    justify-content: center;
    position: absolute;
    left: 5%;
    width: 90%;
    height: 70%;
    top: 15%;
    background-color: #FFF;
    border-radius: 20px;
    box-shadow: 5px 5px 20px rgb(135 137 178 / 20%);
    overflow: hidden;
}
.maptainer .bar{
    position: absolute;
    width: 100%;
    height: 8%;
    background: #465FC6;
    z-index: 100;
    /* box-shadow: 0 1px 5px #000; */
}
.option1{
    color: #FFF;
    position: relative;
    top: 18px;
    left: 2%;
    background: transparent;
    border: 0;
    outline: none;
    font-weight: bold;
}
.option2{
    color: #FFF;
    position: relative;
    top: 18px;
    left: 2%;
    background: transparent;
    border: 0;
    outline: none;
    font-weight: bold;
}
.option3{
    color: #FFF;
    position: relative;
    top: 18px;
    left: 2%;
    background: transparent;
    border: 0;
    outline: none;
    font-weight: bold;
}
.list{
    position: relative;
    left: 0;
    width: 20%;
    height: 100%;
    background: #f4f4f8;
    z-index: 0;
    /* box-shadow: 1px 0 5px #000; */
    z-index: 3;
}
    
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
</head>
<body>
<div class="container">
        <h2>시험장소</h2>
    </div>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div><form name="f" method="post">
					
			
				
					<select name="selectedAdress1" id="" onchange="categoryChange(this)">
						<option value>시/도 선택</option>
						<option value="강원">강원</option>
						<option value="경기">경기</option>
						<option value="경남">경남</option>
						<option value="경북">경북</option>
						<option value="광주">광주</option>
						<option value="대구">대구</option>
						<option value="대전">대전</option>
						<option value="부산">부산</option>
						<option value="서울">서울</option>
						<option value="울산">울산</option>
						<option value="인천">인천</option>
						<option value="전남">전남</option>
						<option value="전북">전북</option>
						<option value="제주">제주</option>
						<option value="충남">충남</option>
						<option value="충북">충북</option>
					</select>
				

				
					<select name="selectedAdress2" id="state">
						<option>군/구 선택</option>
					</select>
				
				<button type="button" onclick="searchAdress();" id="">검색</button>

			</form>
              
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00abcb26ff21f4396d563e8d0aa1dada&libraries=services"></script>
<script>
// 마커를 담을 배열입니다
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});


let adressJSON  //주소 담긴 json객체
var markers = [];
var infowindows = []; //인포윈도우 담긴 객체

function searchAdress() {
    const xhttp = new XMLHttpRequest()
    xhttp.open("GET", "${pageContext.request.contextPath}/losh/exlocation?adress1=" + document.f.selectedAdress1.value + "&adress2="+document.f.selectedAdress2.value)
    xhttp.send()
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            adressJSON = JSON.parse(this.response);
            console.log(JSON.stringify(adressJSON))
            
          	
          	let listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';
            
            removeAllChildNods(listEl);
            removeMarker()
            // 주소-좌표 변환 객체를 생성합니다
            for (let i = 0; i < adressJSON.length; i++) {
                var geocoder = new kakao.maps.services.Geocoder();

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(adressJSON[i].adress,
                        
                        function (result, status) {
                            // 정상적으로 검색이 완료됐으면 
                            if (status === kakao.maps.services.Status.OK) {
                            	//alert(JSON.stringify(result))
                                var coords = new kakao.maps.LatLng(
                                    result[0].y,
                                    result[0].x);
                            	// 마커를 생성하고 지도에 표시합니다
                                var placePosition = new kakao.maps.LatLng(result[0].y, result[0].x),
                                    marker = addMarker(placePosition, i), 
                                    itemEl = getListItem(i, adressJSON[i]); // 검색 결과 항목 Element를 생성합니다
                              
                             	// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                                // LatLngBounds 객체에 좌표를 추가합니다
                                bounds.extend(placePosition);

                                // 마커와 검색결과 항목에 mouseover 했을때
                                // 해당 장소에 인포윈도우에 장소명을 표시합니다
                                // mouseout 했을 때는 인포윈도우를 닫습니다
                                (function(marker, title) {
                                    kakao.maps.event.addListener(marker, 'mouseover', function() {
                                        displayInfowindow(marker, title);
                                    });

                                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                                        infowindow.close();
                                    });

                                    itemEl.onmouseover =  function () {
                                        displayInfowindow(marker, title);
                                    };

                                    itemEl.onmouseout =  function () {
                                        infowindow.close();
                                    };
                                })(marker, adressJSON[i].location);

                                fragment.appendChild(itemEl);     
                     
                             	// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                                listEl.appendChild(fragment);
                                menuEl.scrollTop = 0;

                                // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                                map.setBounds(bounds);               
                            }
                        });
            }
        }
    }
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h2>' + places.location + '</h2>'
                +'    <span>' +  places.adress  + '</span></div>';

       
    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>
</body>
</html>
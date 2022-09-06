window.Kakao.init("00abcb26ff21f4396d563e8d0aa1dada")
//00abcb26ff21f4396d563e8d0aa1dada  백대일
//e6f49681a0acfa52262e987fe4da0029 김현겸
let email
let nickname
let id
function kakaoLogin(){
   Kakao.Auth.login({
      success: function (authObj) {
      Kakao.API.request({
         url: '/v2/user/me',
         success: function (response) {
            console.log(response)
            console.log(authObj)
            alert(JSON.stringify(response))
              console.log(authObj.access_token);
            
            email = response.kakao_account.email
            nickname = response.kakao_account.profile.nickname
            id = response.id
            console.log(email, nickname, id)
            addinfo()
            
         },
         fail: function (error) {
            console.log(error)
         },
      })
   },
      fail: function (error) {
         console.log(error)
      },
   })
}
function addinfo() {
	document.getElementById("userEmail").value = email
	document.getElementById("userName").value = nickname
	document.getElementById("userId").value = id
	document.getElementById("sendkakaomember").submit();
	
	
}
function aa(){
	alert("제대로먹임")
}
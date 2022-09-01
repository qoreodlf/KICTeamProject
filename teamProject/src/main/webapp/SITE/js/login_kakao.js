
/* 카카오 디벨롭 키 */
window.Kakao.init("e6f49681a0acfa52262e987fe4da0029")

let email
let nickname
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
            console.log(email, nickname)
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
	document.getElementById("sendkakaomember").submit();
	console.log(document.getElementById("userEmail"))
	console.log(document.getElementById("userName"))
	
}
  
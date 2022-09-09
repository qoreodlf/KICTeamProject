package controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Member;
import service.LocationScheduleDao;
import service.MemberDao;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	MemberDao md;

	HttpServletRequest request;
	Model m;
	HttpSession session;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}

	// 카카오 로그인 시 DB에 정보없으면 멤버추가, DB에 이미 있으면 그냥 로그인
	// 08.30 백대일 작성
	@PostMapping("kakaologin")
	public String kakaoLogin(Member member) throws Exception {

		
		member.setUserPassword("@kakaologin@");
		member.setUserType(2);
		member.setUserNickname(member.getUserEmail());
		
		
		String url;
		String msg = null;
		System.out.println("member : " + member.toString());
		Member selectedMember = md.selectMemberOne(member.getUserId());
		System.out.println(member.getUserId());

		if (selectedMember == null) {
			md.addKakaoMember(member);
			msg = "카카오 회원가입 완료";
			url = "/losh/index";
			session.setAttribute("userId", member.getUserId());
			session.setAttribute("userEmail", member.getUserEmail());
			session.setAttribute("userName", member.getUserName());
			session.setAttribute("userType", member.getUserType());
			if (member.getUserNickname().contains("@")) {
				url = "/member/nickname";
				msg=null;
			}
			
		} else if (selectedMember.getUserType() == 1) {
			msg = "일반 회원가입된 회원입니다. 이메일로 로그인 해주세요.";
			url = "/member/loginform";
		} else {
			session.setAttribute("userId", selectedMember.getUserId());
			session.setAttribute("userEmail", selectedMember.getUserEmail());
			session.setAttribute("userName", selectedMember.getUserName());
			session.setAttribute("userType", selectedMember.getUserType());
			session.setAttribute("userNickname", selectedMember.getUserNickname());
			
			url ="/losh/index";
		}
	
		
		// 콘솔확인용
		System.out.println("member : " + member.toString());
		if (selectedMember != null)
			System.out.println("selectedMember : " + selectedMember.toString());
		System.out.println(url);
		
		
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
	
		return "alert";
	}

	// 일반회원가입 08.30 백대일 작성
	@RequestMapping("addmember")
	public String addMember(Member member) throws Exception {
		System.out.println(member.toString());
		member.setUserId(member.getUserEmail());
		member.setUserType(1);
		member.setUserNickname(member.getUserEmail());
		String msg;
		String url = "/member/loginform";
		Member selectedMember = md.selectMemberOne(member.getUserEmail());

		if (selectedMember == null) {
			md.addKakaoMember(member);
			msg = "회원가입 완료";
		} else if(selectedMember.getUserType()==2){
			msg = "카카오 회원으로 가입된 회원입니다.";
		} else {
			msg = "이미 가입된 회원입니다.";
		}

		// alert.jsp 통해 loginform으로 다시 이동
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
		return "alert";
	}

	// 일반회원로그인 0831백대일
	@RequestMapping("loginpro")
	public String loginPro(String userEmail, String userPassword) {
		Member loginMember = md.selectMemberOne(userEmail);
		String url;
		String msg;
		
		System.out.println(loginMember);
		System.out.println(userEmail +"  "+userPassword);

		if (loginMember == null) {
			url = "/member/loginform";
			msg = "등록되지 않은 이메일입니다.";
		} else {
			
			//로그인 시 세션에 userEmail, userName, userType 등록
			if (userPassword.equals(loginMember.getUserPassword()) && loginMember.getUserType() == 1) {
				session.setAttribute("userId", loginMember.getUserId());
				session.setAttribute("userEmail", loginMember.getUserEmail());
				session.setAttribute("userName", loginMember.getUserName());
				session.setAttribute("userType", loginMember.getUserType());
				session.setAttribute("userNickname", loginMember.getUserEmail());
				url = "/losh/index";
				msg = null;
				if (loginMember.getUserNickname().contains("@")) {
					url = "/member/nickname";
				}
			} else {
				url = "/member/loginform";
				msg = "이메일과 비밀번호가 일치하지 않습니다.";
			}
		}
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);

		return "alert";
	}

	@RequestMapping("loginform")
	public String loginForm() throws Exception {
		return "login";
	}
	
	@RequestMapping("logout")
	public String logOut() throws Exception {
		session.invalidate();
		String url = "/losh/index";
		String msg = "로그아웃 되었습니다.";
		
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);

		return "alert";
	}
	
	@RequestMapping("mypage")
	public String mypage() throws Exception{
		return "mypage";
	}
	
	@RequestMapping("nickname")
	public String nickname() throws Exception{
		return "nickname";
	}
	
	//닉네임설정
	@RequestMapping("nicknamepro")
	public String nicknamePro(String userNickname) throws Exception{
		Member selectedMember = md.selectByNickname(userNickname);
		String userId = (String) session.getAttribute("userId");
		String url;
		String msg;
		if (selectedMember==null) {
			md.updateNickname(userId, userNickname);
			msg="닉네임이 변경되었습니다.";
			url="/losh/index";
			session.setAttribute("userNickname", userNickname);
		} else {
			msg="현재 사용중인 닉네임입니다.";
			url="/member/nickname";
		} 
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);

		return "alert";
	}
}

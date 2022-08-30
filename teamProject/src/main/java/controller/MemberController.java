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

	//카카오 로그인 시 DB에 정보없으면 멤버추가, DB에 이미 있으면 그냥 로그인
	// 08.30 백대일 작성
	@PostMapping("kakaologin")
	public String kakaoLogin(@RequestBody Member member) throws Exception {

		member.setUserPasswoed("@kakaologin@");
		member.setUserType(2);
		
		String msg;
		System.out.println("member : "+member.toString());
		Member selectedMember = md.selectMemberOne(member.getUserEmail());
		if(selectedMember == null) {
			md.addKakaoMember(member);
			msg = "멤버추가완료";
		} else {
			msg = "이미있는멤버";
		}

		System.out.println("member : "+member.toString());
		if(selectedMember != null)System.out.println("selectedMember : "+selectedMember.toString());
		System.out.println(msg);
		
		return member.toString();
	}
	
	
	//일반회원가입 08.30 백대일 작성
	@RequestMapping("addmember")
	public String addMember (Member member) throws Exception{
		System.out.println(member.toString());
		String msg;
		String url = "/member/loginform";
		Member selectedMember = md.selectMemberOne(member.getUserEmail());
		
		if(selectedMember == null) {
			md.addKakaoMember(member);
			msg = "회원가입 완료";
		} else {
			msg = "이미 가입된 회원입니다.";
		}

		//alert.jsp 통해 loginform으로 다시 이동
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
		return "alert";
	}
	
	@RequestMapping("loginform")
	public String loginForm () throws Exception{
		return "login";
	}
}

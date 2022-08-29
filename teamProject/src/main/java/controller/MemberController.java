package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.LocationScheduleDao;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	LocationScheduleDao lsd;
	
	HttpServletRequest request;
	Model m;
	HttpSession session;
	
	@RequestMapping("kakaologin")
	public String kakaoLogin(String email, String nickname) throws Exception{
		
	}
}

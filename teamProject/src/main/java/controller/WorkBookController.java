package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import service.LocationScheduleDao;

@Controller
@RequestMapping("/workbook/")
public class WorkBookController {

	@Autowired
	//LocationScheduleDao lsd; 워크북다오넣기
	
	HttpServletRequest request;
	Model m;
	HttpSession session;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}
	
	@RequestMapping("workbooklist")
	public String workBookList() throws Exception{
		return "workbook";
		
	}
}

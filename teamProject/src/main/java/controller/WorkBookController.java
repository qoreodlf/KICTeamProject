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
	
	//워크북리스트 띄우는 창.
	//워크북 db에서 종목코드가 세션아이디 종목코드와 맞는애들만 불러서 띄우면됨(0830백대일)
	@RequestMapping("workbooklist")
	public String workBookList() throws Exception{
		
		//워크북 db에서 종목코드가 세션아이디 종목코드와 맞는애들만 불러서 띄우면됨
		return "workbook";
		
	}
	
	@RequestMapping("workbookform")
	public String workBookForm() throws Exception{
		return "workbookform";
	}
}

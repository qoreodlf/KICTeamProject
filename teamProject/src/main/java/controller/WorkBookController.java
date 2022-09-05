package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import model.WorkBook;
import service.LocationScheduleDao;
import service.WorkBookDao;

@Controller
@RequestMapping("/workbook/")
public class WorkBookController {

	@Autowired
	WorkBookDao wd; 
	
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
		String wbJmcd= (String)session.getAttribute("jmcd");
		List<WorkBook> wbList=wd.selectWBList(wbJmcd);
		request.setAttribute("wbList", wbList);
		
		
		//워크북 db에서 종목코드가 세션아이디 종목코드와 맞는애들만 불러서 띄우면됨
		return "workbook";
		
	}
	
	@RequestMapping("workbookform")
	public String workBookForm() throws Exception{
		return "workbookform";
	}
	
	//문제출제. 세션에서 종목코드와 아이디 받아서 구분 (백대일)
	@RequestMapping("workbookpro")
	public String workBookPro(WorkBook workBook) throws Exception{
		workBook.setUserId((String)session.getAttribute("userId"));
		workBook.setWbJmcd((String)session.getAttribute("jmcd"));
		
		System.out.println(workBook);
		wd.addWorkBook(workBook);
		
		return "workbook";		
	}
	
	@RequestMapping("workbookpost")
	public String workBookPost() throws Exception{
		
		//파라메타에서 wbNum따서 해당 워크북 가져옴
		String wbNum = request.getParameter("wbNum");
		WorkBook selectedWB = wd.selectWBOne(wbNum);
		wd.readCountUp(wbNum); //조회수
		
		request.setAttribute("selectedWB", selectedWB);
		return "workbookpost";
	}
	
	@RequestMapping("updatelike")
	public int updateLike(int wbNum, String userId) throws Exception{
		System.out.println(wbNum + userId);
		System.out.println("userid="+userId);
		int likeCheck = wd.likeCheck(wbNum, userId); //해당개시물을 좋아요 눌렀는지
		System.out.println("likecheck:"+likeCheck);
		
		if(likeCheck == 0) {
			wd.insertLike(wbNum, userId);
			wd.updateLike(wbNum);
			wd.updateLikeCheck(wbNum, userId);
		}else if (likeCheck == 1) {
			wd.updateLikeCheckCancel(wbNum, userId);
			wd.updateLikeCancel(wbNum);
			wd.deleteLike(wbNum, userId);
		}
		return likeCheck;
	}
}

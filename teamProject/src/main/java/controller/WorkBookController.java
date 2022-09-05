package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webjjang.util.PageObject;

import service.LocationScheduleDao;
import service.WorkbookDao;

@Controller
@RequestMapping("/workbook/")

public class WorkBookController {

	
	@Autowired
	private WorkbookDao service;
		
	//워크북리스트 띄우는 창.
	//워크북 db에서 종목코드가 세션아이디 종목코드와 맞는애들만 불러서 띄우면됨(0830백대일)
	@RequestMapping("workbook")
	@GetMapping("/list.co") //페이지 카운트
	public String list(PageObject pageObject, Model model) throws Exception{
	
		model.addAttribute("list", service.getList(pageObject));
		
		model.addAttribute("pageObject", pageObject);
		
		//워크북 db에서 종목코드가 세션아이디 종목코드와 맞는애들만 불러서 띄우면됨
		return "workbook/list";		
	}	
	/*게시판 글보기
	@GetMapping("/list.do")
	public String workBookpost() throws Exception{
		// /SITE/workbookform;
		return "workbookpost";
	}
	// 게시판 글쓰기 폼
	@GetMapping("/write.do")
	public String workBookForm() throws Exception{
		// /SITE/workbookform;
		return "workbookform";
	}
	// 게시판 글쓰기 처리
	@PostMapping("/write.do")
	public String wbFormProcess() throws Exception{
		// 게시판 리스트로 보낸다
		return "redirect:workbook.do";
	}
	// 게시판 글수정 폼
	@GetMapping("/update.do")
	public String wbUpdateForm() throws Exception{
		//글보기로 자동 이동
		return "workbookUpdate";
	}
	// 게시판 글쓰기 수정 처리
	@PostMapping("/update.do")
	public String wbUpdateProcess() throws Exception{
		//글보기로 자동 이동
		return "response:list.do";
	}
	// 게시판 글 삭제  
	@PostMapping("/delete.do")
	public String wbDelete() throws Exception{
		// 리스트로 이동
		return "redirect:workbook.do";
	}
*/
}

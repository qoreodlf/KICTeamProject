package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

import model.Odnote;
import model.WorkBook;
import service.OdnoteDao;
import service.WorkBookDao;

@Controller
@RequestMapping("/odnote/")
public class ODNoteController {

	@Autowired
	OdnoteDao od;
	
	HttpServletRequest request;
	Model m;
	HttpSession session;
	
	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}
	
	@RequestMapping("addodnote")
	@ResponseBody
	public int addOdnote(Odnote odnote) throws Exception{
		int checkOdnote = od.odnoteCheck(odnote); //오답노트에 해당 문제 있는지 확인
		System.out.println(odnote);
		System.out.println("checkod: "+checkOdnote);
		if(checkOdnote==0) { //해당문제 없으면 오답노트에 추가
			od.addOdnote(odnote);
		}
		return checkOdnote;
	}
	
	@RequestMapping("odnote")
	public String odnote() throws Exception{
		String userId = (String) session.getAttribute("userId");
		List<WorkBook> odlist = od.selectOdList(userId);
		request.setAttribute("odlist", odlist);
		return "odnote";
	}
	
	//오답노트 추가된 문제 삭제(백대일)
	@ResponseBody
	@PostMapping(value = "deleteodnote", produces = "application/json; charset=utf8")
	public String deleteOdnote(@RequestBody HashMap<String, Object> deleteOd) throws Exception{
		String userId = (String) session.getAttribute("userId");
		ArrayList<Integer> deleteList =  (ArrayList<Integer>) deleteOd.get("deleteList");
		
		for (int i = 0; i < deleteList.size(); i++) {
			od.deleteOdnote(userId, String.valueOf(deleteList.get(i)));
		}
		
		return null;
	}
}
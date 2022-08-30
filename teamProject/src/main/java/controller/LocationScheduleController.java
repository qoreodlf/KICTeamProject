package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ExList;
import model.ExLocation;
import service.LocationScheduleDao;

@Controller
@RequestMapping("/losh/")
public class LocationScheduleController {

	@Autowired
	LocationScheduleDao lsd;
	
	HttpServletRequest request;
	Model m;
	HttpSession session;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}
	
	@RequestMapping("index")
	public String index() throws Exception{
		return "index";
		
	}
	
	//시험장소 지도에 표시 (백대일 0829수정)
	@RequestMapping(value = "exlocation", produces = "application/json; charset=utf8")
	public @ResponseBody String exLocationPro (String adress1, String adress2) throws Exception{
		System.out.println(adress1 + adress2);
		String adress =adress1+" " +adress2;
		List<ExLocation> adressList = lsd.selectLocation(adress);
		System.out.println(adressList.toString());
		return adressList.toString();
	}
		
	
	//list.jsp 시험종목별 코드 맵핑 (백대일 0830작성)
	@RequestMapping(value = "exlist")
	public String exList() throws Exception{
		
		List<ExList> exCon = lsd.selectExList("14");
		List<ExList> exMa = lsd.selectExList("16");
		List<ExList> exInfo= lsd.selectExList("21");
		List<ExList> exFor = lsd.selectExList("24");
		List<ExList> exSafe = lsd.selectExList("25");
		List<ExList> exEn = lsd.selectExList("26");
		
		System.out.println("exCon: " + exCon.toString());
		System.out.println("exMa: " + exMa.toString());
		System.out.println("exInfo: " + exInfo.toString());
		System.out.println("exFor: " + exFor.toString());
		System.out.println("exSafe: " + exSafe.toString());
		System.out.println("exEn: " + exEn.toString());
		
		request.setAttribute("exCon", exCon);
		request.setAttribute("exMa", exMa);
		request.setAttribute("exInfo", exInfo);
		request.setAttribute("exFor", exFor);
		request.setAttribute("exSafe", exSafe);
		request.setAttribute("exEn", exEn);
		
		return "list";
		
	}
	
	
	//source.jsp 열어주는 url.
	//list.jsp에서 링크 별 파라메타에 과목코드 붙여둠(0830 백대일 작성)
	@RequestMapping(value = "source")
	public String source() throws Exception{
		
		if (request.getParameter("jmcd") != null && request.getParameter("jmfldnm") != null) {
			session.setAttribute("jmcd", request.getParameter("jmcd"));
			session.setAttribute("jmfldnm", request.getParameter("jmfldnm"));
		}
		return "source";
		
	}
	
	//시험일정, 장소 페이지 로딩(0830 백대일)
	@RequestMapping(value = "exschedule")
	public String exSchedule() throws Exception{	
		return "examschedule";	
	}
	
	@RequestMapping(value = "exmap")
	public String exMap() throws Exception{
		return "exammap";
	}
	
		
		
		
	
}

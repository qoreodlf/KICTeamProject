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
	
	//시험장소 지도에 표시 (백대일 0829수정)
	@RequestMapping(value = "exlocation", produces = "application/json; charset=utf8")
	public @ResponseBody String exLocationPro (String adress1, String adress2) throws Exception{
		System.out.println(adress1 + adress2);
		String adress =adress1+" " +adress2;
		List<ExLocation> adressList = lsd.selectLocation(adress);
		System.out.println(adressList.toString());
		return adressList.toString();
		
		
		
	}
}

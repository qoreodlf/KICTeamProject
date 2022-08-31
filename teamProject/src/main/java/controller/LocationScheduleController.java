package controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	public String index() throws Exception {
		return "index";

	}

	// 시험장소 지도에 표시 (백대일 0829수정)
	@RequestMapping(value = "exlocation", produces = "application/json; charset=utf8")
	public @ResponseBody String exLocationPro(String adress1, String adress2) throws Exception {
		System.out.println(adress1 + adress2);
		String adress = adress1 + " " + adress2;
		List<ExLocation> adressList = lsd.selectLocation(adress);
		System.out.println(adressList.toString());
		return adressList.toString();
	}

	// list.jsp 시험종목별 코드 맵핑 (백대일 0830작성)
	@RequestMapping(value = "exlist")
	public String exList() throws Exception {

		List<ExList> exCon = lsd.selectExList("14");
		List<ExList> exMa = lsd.selectExList("16");
		List<ExList> exInfo = lsd.selectExList("21");
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

	// source.jsp 열어주는 url.
	// list.jsp에서 링크 별 파라메타에 과목코드 붙여둠(0830 백대일 작성)
	@RequestMapping(value = "source")
	public String source() throws Exception {

		if (request.getParameter("jmcd") != null && request.getParameter("jmfldnm") != null) {
			session.setAttribute("jmcd", request.getParameter("jmcd"));
			session.setAttribute("jmfldnm", request.getParameter("jmfldnm"));
		}
		return "source";

	}

	// 시험일정, 장소 페이지 로딩(0830 백대일)
	@RequestMapping(value = "exschedule")
	public String exSchedule(Model model) throws Exception {
		
		String jmcd = (String) session.getAttribute("jmcd");

		//공공대이터 포털에서 세션의 종목코드에 따른 시험일정 데이터 받기
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
				+ "=EHwEkDEw%2BYsTJYe52cX%2BJavNTeDYolcEsFZzCZ2OhgNqi02zverwxqHGtbQlvdb%2FoCVyTo2Rg%2B7OIA6IaHJlmA%3D%3D");
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode("10", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder
				.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지번호 */
		urlBuilder.append("&" + URLEncoder.encode("dataFormat", "UTF-8") + "="
				+ URLEncoder.encode("json", "UTF-8")); /* 응답 데이터 표준 형식 - xml / json (대소문자 구분 없음) */
		urlBuilder.append(
				"&" + URLEncoder.encode("implYy", "UTF-8") + "=" + URLEncoder.encode("2022", "UTF-8")); /* 시행년도 */
		urlBuilder.append("&" + URLEncoder.encode("qualgbCd", "UTF-8") + "="
				+ URLEncoder.encode("T", "UTF-8")); /* 자격구분코드 - T : 국가기술자격 - C : 과정평가형자격 - W : 일학습병행자격 - S : 국가전문자격 */
		urlBuilder.append("&" + URLEncoder.encode("jmCd", "UTF-8") + "="
				+ URLEncoder.encode(jmcd, "UTF-8")); /* 종목코드 값 (세션값에서 가져옴) */
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line + "\n");
		}
		rd.close();
		conn.disconnect();
		

		// 데이터포털에서 받는 데이터 json객체로 변환
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(sb.toString());
		JSONObject jsonBody = (JSONObject) jsonObject.get("body");

		JSONArray array = (JSONArray) jsonBody.get("items"); // item에 있는 json데이터만 추출
		
		
		JSONArray notOverlapedJSON = new JSONArray(); //실제로 jsp로 날려줄 데이터 담을 array
		for (int i = 0; i < array.size(); i++) {

			JSONObject object = (JSONObject) array.get(i);

			// 중복되는 array 제외하고 json 데이터들 새로운 JSONArray에 추가
			if (i >= 1) {
				JSONObject objectLast = (JSONObject) array.get(i - 1);
				if (object.get("implSeq") != objectLast.get("implSeq")) {
					notOverlapedJSON.add(object);
				}
			} else {
				notOverlapedJSON.add(object);
			}
		}
		System.out.println(notOverlapedJSON);
		model.addAttribute("notOverlapedJSON", notOverlapedJSON); //json담긴 배열 jsp로 전달

		return "examschedule";
	}

	@RequestMapping(value = "exmap")
	public String exMap() throws Exception {
		return "exammap";
	}

}

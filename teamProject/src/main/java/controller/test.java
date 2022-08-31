package controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class test {
//////////////////////////테스트용입니다///////////////////////////////////////////
	
	
	/////////////////////     테스트용입니다      ///////////////////////
 
	
	//////////////////////////////////////////
	public static void main(String[] args) throws Exception {
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
				+ "=EHwEkDEw%2BYsTJYe52cX%2BJavNTeDYolcEsFZzCZ2OhgNqi02zverwxqHGtbQlvdb%2FoCVyTo2Rg%2B7OIA6IaHJlmA%3D%3D"); /*
																															 * Service
																															 * Key
																															 */
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
				+ URLEncoder.encode("1250", "UTF-8")); /* 종목코드 값 (세션값에서 가져옴) */
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
		System.out.println(sb.toString());

		// json객체로 변환
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(sb.toString());
		JSONObject jsonBody = (JSONObject) jsonObject.get("body");

		JSONArray array = (JSONArray) jsonBody.get("items"); //item에 있는 json데이터만 추출
		JSONArray notOverlaped = new JSONArray();
		for (int i = 0; i < array.size(); i++) {

			JSONObject object = (JSONObject) array.get(i);
			
			//중복되는 array 제외하고 json 데이터들 새로운 JSONArray에 추가
			if (i >= 1) {   
				JSONObject objectLast = (JSONObject) array.get(i - 1);
				if(object.get("implSeq") != objectLast.get("implSeq")) {
					notOverlaped.add(object);
				}
			}else {
				notOverlaped.add(object);
			}
			System.out.println(i + " : " + object);
		}
		System.out.println(notOverlaped.size());
		

	}

}

package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Odnote;
import model.WorkBook;

@Repository
public class OdnoteDao {
	
	@Autowired
	SqlSessionTemplate session;

	private static final String ns = "odnote.";
	private Map<String, Object> map = new HashMap<String, Object>();
	
	public int addOdnote(Odnote	odnote) {
		int num = session.insert(ns+"addodnote", odnote);
		return num;
	}
	
	public List<WorkBook> selectOdList(String userId){
		List<WorkBook> odlist = session.selectList(ns+"selectodlist", userId);
		return odlist;
	}
	
	public int odnoteCheck(Odnote odnote) {
		int num = session.selectOne(ns+"odnotecheck", odnote);
		return num;
	}
	

	
	
	
	
}
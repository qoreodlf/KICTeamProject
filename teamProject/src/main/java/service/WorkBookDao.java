package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Wbreply;
import model.WorkBook;

@Repository
public class WorkBookDao {
	
	@Autowired
	SqlSessionTemplate session;

	private static final String ns = "workbook.";
	private Map<String, Object> map = new HashMap<String, Object>();
	
	public int addWorkBook(WorkBook workBook) {
		int num = session.insert(ns+"addworkbook", workBook);
		return num;
	}
	
	public int deleteWorkbook(String wbNum) {
		int num = session.delete(ns+"deleteworkbook", wbNum);
		return num;
	}
	
	public List<WorkBook> selectWBList(String wbJmcd) {
		List<WorkBook> wblist = session.selectList(ns+"selectwblist", wbJmcd);
		return wblist;
	}
	
	public List<WorkBook> selectMyWBList(String userId) {
		List<WorkBook> wblist = session.selectList(ns+"selectmywblist", userId);
		return wblist;
	}
	
	public WorkBook selectWBOne(String wbNum) {
		WorkBook wb = session.selectOne(ns+"selectwbone", wbNum);
		return wb;
	}
	
	public int readCountUp(String wbNum) {
		int num = session.update(ns+"readcountup", wbNum);
		return num;
	}
	
	public int updateLike(int wbNum) {
		int num = session.update(ns+"updateLike", wbNum);
		return num;
	}
	
	public int updateLikeCancel(int wbNum) {
		int num = session.update(ns+"updateLikeCancel", wbNum);
		return num;
	}
	
	public int insertLike(int wbNum, String userId) {
		map.clear();
		map.put("wbNum", wbNum);
		map.put("userId", userId);
		int num = session.insert(ns+"insertLike", map);
		return num;
	}
	
	public int deleteLike(int wbNum, String userId) {
		map.clear();
		map.put("wbNum", wbNum);
		map.put("userId", userId);
		int num = session.insert(ns+"deleteLike", map);
		return num;
	}
	
	public int updateLikeCheck(int wbNum, String userId) {
		map.clear();
		map.put("wbNum", wbNum);
		map.put("userId", userId);
		int num = session.insert(ns+"updateLikeCheck", map);
		return num;
	}
	
	public int updateLikeCheckCancel(int wbNum, String userId) {
		map.clear();
		map.put("wbNum", wbNum);
		map.put("userId", userId);
		int num = session.insert(ns+"updateLikeCheckCancel", map);
		return num;
	}
	
	public int likeCheck(int wbNum, String userId) {
		map.clear();
		map.put("wbNum", wbNum);
		map.put("userId", userId);
		int num = session.selectOne(ns+"likeCheck", map);
		return num;
	}
	
	public int countLike(String wbNum) {
		int num = session.selectOne(ns+"countlike", wbNum);
		return num;
	}
	
	public int addReply(Wbreply wbreply) {
		int num = session.insert(ns+"addreply", wbreply);
		return num;
	}
	
	public int deletereply(String replyNum) {
		int num = session.delete(ns+"deletereply",replyNum);
		return num;
	}
	
	public List<Wbreply> replyList(String wbNum) {
		List<Wbreply> replyList = session.selectList(ns+"replylist", wbNum);
		return replyList;
	}
	
	public int countReply(String wbNum) {
		int num = session.selectOne(ns+"countreply", wbNum);
		return num;
	}
	
	
	
}

package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public List<WorkBook> selectWBList(String wbJmcd) {
		List<WorkBook> wblist = session.selectList(ns+"selectwblist", wbJmcd);
		return wblist;
	}
	
	public WorkBook selectWBOne(String wbNum) {
		WorkBook wb = session.selectOne(ns+"selectwbone", wbNum);
		return wb;
	}
}

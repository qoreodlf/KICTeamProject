package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ExList;
import model.ExLocation;



@Repository
public class LocationScheduleDao {
	
	@Autowired
	SqlSessionTemplate session;
	
	private static final String ns = "losh.";
	private Map<String, Object> map = new HashMap<String, Object>();
	
	public List<ExLocation> selectLocation(String adress) {
		
		List<ExLocation> list = session.selectList(ns+"selectLocation", adress);
		return list;
	}
	
	public List<ExList> selectExList(String obligfldcd) {
		List<ExList> list = session.selectList(ns+"selectexlist", obligfldcd);
		return list;
		
	}
	
}

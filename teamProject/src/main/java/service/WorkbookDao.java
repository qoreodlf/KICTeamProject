package service;  // DAO

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.webjjang.util.PageObject;

import model.Workbook;

	@Repository
	public class WorkbookDao {

	@Inject
	private SqlSessionTemplate sqlSession;
	
	public List<Workbook> getList(PageObject pageObject){
		return sqlSession.selectList("workbook.getList", pageObject);
	}

	public Integer getCount() {
		//화면에서 보여주는 페이지 처리
		return sqlSession.selectOne("workbook.getCount");
	}
}
	
	

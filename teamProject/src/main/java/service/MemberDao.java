package service;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate session;
	
	private static final String ns = "member.";
	private Map<String, Object> map = new HashMap<String, Object>();
	
	public Member selectMemberOne(String userId) {
		Member member = session.selectOne(ns + "selectmemberone", userId);
		return member;
	}
	
	public Member selectByNickname(String userNickname) {
		Member member = session.selectOne(ns + "selectbynickname", userNickname);
		return member;
	}
	
	public int updateNickname(String userId, String userNickname) {
		map.clear();
		map.put("userId", userId);
		map.put("userNickname", userNickname);
		int num = session.update(ns+"updatenickname", map);
		return num;
	}
	
	public int addKakaoMember(Member member) {
		int num = session.insert(ns+"addkakaomember", member);
		return num;
	}
}

package model;

import java.util.Date;

public class Wbreply {
	int wbNum;
	String userId;
	String reText;
	Date reDate;
	int replyNum;
	String userName;
	String userNickname;
	public int getWbNum() {
		return wbNum;
	}
	public void setWbNum(int wbNum) {
		this.wbNum = wbNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReText() {
		return reText;
	}
	public void setReText(String reText) {
		this.reText = reText;
	}
	public Date getReDate() {
		return reDate;
	}
	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}
	public int getReplyNum() {
		return replyNum;
	}
	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	@Override
	public String toString() {
		return " {\"wbNum\":\"" + wbNum + "\", \"userId\":\"" + userId + "\", \"reText\":\"" + reText
				+ "\", \"reDate\":\"" + reDate + "\", \"replyNum\":\"" + replyNum + "\", \"userName\":\"" + userName
				+ "\"}";
	}
	
	
	
	
}

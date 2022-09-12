package model;

import java.util.Date;

public class WorkBook {
	String userId;
	int wbNum;
	String wbJmcd;
	String wbTittle;
	String wbAnswer;
	Date wbDate;
	int readcnt;
	int recocnt;
	String wbItem1;
	String wbItem2;
	String wbItem3;
	String wbItem4;
	String userName;
	String jmfldnm;
	Date odDate;
	String userNickname;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getWbNum() {
		return wbNum;
	}
	public void setWbNum(int wbNum) {
		this.wbNum = wbNum;
	}
	public String getWbJmcd() {
		return wbJmcd;
	}
	public void setWbJmcd(String wbJmcd) {
		this.wbJmcd = wbJmcd;
	}
	public String getWbTittle() {
		return wbTittle;
	}
	public void setWbTittle(String wbTittle) {
		this.wbTittle = wbTittle;
	}
	public String getWbAnswer() {
		return wbAnswer;
	}
	public void setWbAnswer(String wbAnswer) {
		this.wbAnswer = wbAnswer;
	}
	public Date getWbDate() {
		return wbDate;
	}
	public void setWbDate(Date wbDate) {
		this.wbDate = wbDate;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public int getRecocnt() {
		return recocnt;
	}
	public void setRecocnt(int recocnt) {
		this.recocnt = recocnt;
	}
	public String getWbItem1() {
		return wbItem1;
	}
	public void setWbItem1(String wbItem1) {
		this.wbItem1 = wbItem1;
	}
	public String getWbItem2() {
		return wbItem2;
	}
	public void setWbItem2(String wbItem2) {
		this.wbItem2 = wbItem2;
	}
	public String getWbItem3() {
		return wbItem3;
	}
	public void setWbItem3(String wbItem3) {
		this.wbItem3 = wbItem3;
	}
	public String getWbItem4() {
		return wbItem4;
	}
	public void setWbItem4(String wbItem4) {
		this.wbItem4 = wbItem4;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getJmfldnm() {
		return jmfldnm;
	}
	public void setJmfldnm(String jmfldnm) {
		this.jmfldnm = jmfldnm;
	}
	public Date getOdDate() {
		return odDate;
	}
	public void setOdDate(Date odDate) {
		this.odDate = odDate;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	@Override
	public String toString() {
		return " {\"userId\":\"" + userId + "\", \"wbNum\":\"" + wbNum + "\", \"wbJmcd\":\"" + wbJmcd
				+ "\", \"wbTittle\":\"" + wbTittle + "\", \"wbAnswer\":\"" + wbAnswer + "\", \"wbDate\":\"" + wbDate
				+ "\", \"readcnt\":\"" + readcnt + "\", \"recocnt\":\"" + recocnt + "\", \"wbItem1\":\"" + wbItem1
				+ "\", \"wbItem2\":\"" + wbItem2 + "\", \"wbItem3\":\"" + wbItem3 + "\", \"wbItem4\":\"" + wbItem4
				+ "\", \"userName\":\"" + userName + "\", \"jmfldnm\":\"" + jmfldnm + "\", \"odDate\":\"" + odDate
				+ "\", \"userNickname\":\"" + userNickname + "\"}";
	}
	
	
	
	
	
	
	
	
	
	
}

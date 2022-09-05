package model;

import java.util.Date;

public class WorkBook {
	String userId;
	int wbNum;
	String wbJmcd;
	String wbTittle;
	String wbText;
	String wbAnswer;
	Date wbDate;
	int readcnt;
	int recocnt;
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
	public String getWbText() {
		return wbText;
	}
	public void setWbText(String wbText) {
		this.wbText = wbText;
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
	@Override
	public String toString() {
		return " {\"userId\":\"" + userId + "\", \"wbNum\":\"" + wbNum + "\", \"wbJmcd\":\"" + wbJmcd
				+ "\", \"wbTittle\":\"" + wbTittle + "\", \"wbText\":\"" + wbText + "\", \"wbAnswer\":\"" + wbAnswer
				+ "\", \"wbDate\":\"" + wbDate + "\", \"readcnt\":\"" + readcnt + "\", \"recocnt\":\"" + recocnt
				+ "\"}";
	}
	
	
	
	
}

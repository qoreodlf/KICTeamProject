package model;

import java.util.Date;

public class Odnote {
	String wbNum;
	String userId;
	Date odDate;
	String jmcd;
	public String getWbNum() {
		return wbNum;
	}
	public void setWbNum(String wbNum) {
		this.wbNum = wbNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getOdDate() {
		return odDate;
	}
	public void setOdDate(Date odDate) {
		this.odDate = odDate;
	}
	public String getJmcd() {
		return jmcd;
	}
	public void setJmcd(String jmcd) {
		this.jmcd = jmcd;
	}
	@Override
	public String toString() {
		return " {\"wbNum\":\"" + wbNum + "\", \"userId\":\"" + userId + "\", \"odDate\":\"" + odDate
				+ "\", \"jmcd\":\"" + jmcd + "\"}";
	}
	
	
}

package model;

public class Member {
	String userPassword;
	String userName;
	String userEmail;
	int userType;
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	@Override
	public String toString() {
		return " {\"userPassword\":\"" + userPassword + "\", \"userName\":\"" + userName + "\", \"userEmail\":\""
				+ userEmail + "\", \"userType\":\"" + userType + "\"}";
	}
	
	
	
}

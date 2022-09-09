package model;

public class Member {
	String userId;
	String userPassword;
	String userName;
	String userEmail;
	int userType;
	String userNickname;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
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
	
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	@Override
	public String toString() {
		return " {\"userId\":\"" + userId + "\", \"userPassword\":\"" + userPassword + "\", \"userName\":\"" + userName
				+ "\", \"userEmail\":\"" + userEmail + "\", \"userType\":\"" + userType + "\", \"userNickname\":\""
				+ userNickname + "\"}";
	}
	
	
	
	
	
	
	
}

package model;

public class Member {
	String userId;
	String userPasswoed;
	String userName;
	String userEmail;
	int userType;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPasswoed() {
		return userPasswoed;
	}
	public void setUserPasswoed(String userPasswoed) {
		this.userPasswoed = userPasswoed;
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
		return " {\"userId\":\"" + userId + "\", \"userPasswoed\":\"" + userPasswoed + "\", \"userName\":\"" + userName
				+ "\", \"userEmail\":\"" + userEmail + "\", \"userType\":\"" + userType + "\"}";
	}
	
	
}
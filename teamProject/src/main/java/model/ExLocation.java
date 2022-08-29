package model;

public class ExLocation {
	private String adress;
	private String location;
	
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return " {\"adress\":\"" + adress + "\", \"location\":\"" + location + "\"}";
	}
	
	
	
}

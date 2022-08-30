package model;

public class ExList {
	String jmcd; //종목코드
	String jmfldnm; //종목명
	String seriescd; //계열코드
	String seriesnm; //계열명
	String obligfldcd;// 직무분야코드
	String obligfldnm;// 직무분야명
	
	public String getJmcd() {
		return jmcd;
	}
	public void setJmcd(String jmcd) {
		this.jmcd = jmcd;
	}
	public String getJmfldnm() {
		return jmfldnm;
	}
	public void setJmfldnm(String jmfldnm) {
		this.jmfldnm = jmfldnm;
	}
	public String getSeriescd() {
		return seriescd;
	}
	public void setSeriescd(String seriescd) {
		this.seriescd = seriescd;
	}
	public String getSeriesnm() {
		return seriesnm;
	}
	public void setSeriesnm(String seriesnm) {
		this.seriesnm = seriesnm;
	}
	public String getObligfldcd() {
		return obligfldcd;
	}
	public void setObligfldcd(String obligfldcd) {
		this.obligfldcd = obligfldcd;
	}
	public String getObligfldnm() {
		return obligfldnm;
	}
	public void setObligfldnm(String obligfldnm) {
		this.obligfldnm = obligfldnm;
	}
	@Override
	public String toString() {
		return " {\"jmcd\":\"" + jmcd + "\", \"jmfldnm\":\"" + jmfldnm + "\", \"seriescd\":\"" + seriescd
				+ "\", \"seriesnm\":\"" + seriesnm + "\", \"obligfldcd\":\"" + obligfldcd + "\", \"obligfldnm\":\""
				+ obligfldnm + "\"}";
	}
	
	
	
	
	
}

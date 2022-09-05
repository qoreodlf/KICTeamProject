package model;    //DTO

//정보 저장 객체
public class Workbook {
	private int wbNum;
	private String userEmail;
	private String userName;
	private String wbTitle;
	private String wbPasswd;
	private String wbDate;
	private int cnt;
	private int group_num;
	private int re_order;
	private int re_depth;
	private String contents;
	private String filename;
	private int filesize;
	public int getWbNum() {
		return wbNum;
	}
	public void setWbNum(int wbNum) {
		this.wbNum = wbNum;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getWbTitle() {
		return wbTitle;
	}
	public void setWbTitle(String wbTitle) {
		this.wbTitle = wbTitle;
	}
	public String getWbPasswd() {
		return wbPasswd;
	}
	public void setWbPasswd(String wbPasswd) {
		this.wbPasswd = wbPasswd;
	}
	public String getWbDate() {
		return wbDate;
	}
	public void setWbDate(String wbDate) {
		this.wbDate = wbDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public int getGroup_num() {
		return group_num;
	}
	public void setGroup_num(int group_num) {
		this.group_num = group_num;
	}
	public int getRe_order() {
		return re_order;
	}
	public void setRe_order(int re_order) {
		this.re_order = re_order;
	}
	public int getRe_depth() {
		return re_depth;
	}
	public void setRe_depth(int re_depth) {
		this.re_depth = re_depth;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	@Override
	public String toString() {
		return "workbookDTO [wbNum=" + wbNum + ", wbWriter=" + "userEmail" + "userName" + ", wbTitle=" + wbTitle + ", wbPasswd="
				+ wbPasswd + ", wbDate=" + wbDate + ", cnt=" + cnt + ", group_num=" + group_num + ", re_order="
				+ re_order + ", re_depth=" + re_depth + ", contents=" + contents + ", filename=" + filename
				+ ", filesize=" + filesize + "]";
	}
	
	
	
	
}

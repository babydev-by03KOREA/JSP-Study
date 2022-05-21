package client;

public class UserVO {
	private String uid;
	private String pwd;
	private String name;
	private String gender;
	private String email;
	private String address;
	private String aggrement;
	
	public String getId() {
		return uid;
	}
	public void setId(String uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAggrement() {
		return aggrement;
	}
	public void setAggrement(String aggrement) {
		this.aggrement = aggrement;
	}
	
}

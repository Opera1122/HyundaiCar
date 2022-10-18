package com.myweb.user;

//VO(Value Object)
public class UserDTO {
	private String cust_id;
	private String cust_pw;
	private String cust_name;
	private String cust_email;
	private String cust_tel;
	private String cust_address;
	private String cust_gender;

	@Override
	public String toString() {
		return "UserVO [cust_id=" + cust_id + ", cust_pw=" + cust_pw + ", cust_name=" + cust_name + "]";
	}

	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	
	public String getCust_pw() {
		return cust_pw;
	}
	public void setCust_pw(String cust_pw) {
		this.cust_pw = cust_pw;
	}
	
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	
	public String getCust_email() {
		return cust_email;
	}
	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}

	public String getCust_tel() {
		return cust_tel;
	}

	public void setCust_tel(String cust_tel) {
		this.cust_tel = cust_tel;
	}

	public String getCust_address() {
		return cust_address;
	}

	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}

	public String getCust_gender() {
		return cust_gender;
	}

	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}
}
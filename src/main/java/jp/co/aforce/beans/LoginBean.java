package jp.co.aforce.beans;

import java.io.Serializable;

public class LoginBean implements Serializable{
	private String user_id;
	private String user_name;
	private String user_password;
	private String address;
	private String mail_address;
	
	public String getUser_id() {
		return user_id;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public String getUser_password() {
		return user_password;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getMail_address() {
		return mail_address;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
		
	}
	
	public void setUser_name(String user_name) {
		this.user_name=user_name;
	}
	
	public void setUser_password(String user_password) {
		this.user_password=user_password;
		
	}
	
	public void setAddress(String address) {
		this.address=address;
	}
	
	public void setMail_address(String mail_address) {
		this.mail_address=mail_address;
	}
}

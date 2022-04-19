package com.mockproject.automart.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login_details")
public class Login {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sno;
	
	
	
	@Column(name="login_id")
	private String loginId;
	
	@Column(name="password")
	private String password;
	
	@Column(name="email_id")
	private String emailId;
	
	@Column(name="user_type")
	private int userType;
	
	@Column(name="active_status")
	private int activeStatus;
	
	@Column(name="reg_datetime")
	private Date regDatetime;
	
	public Login() {
		
	}
	
	

	public Login(String loginId, String password) {
		super();
		this.loginId = loginId;
		this.password = password;
	}



	public Login(Integer sno, String loginId, String password, String emailId, int userType, int activeStatus,
			Date regDatetime) {
		super();
		this.sno = sno;
		this.loginId = loginId;
		this.password = password;
		this.emailId = emailId;
		this.userType = userType;
		this.activeStatus = activeStatus;
		this.regDatetime = regDatetime;
	}



	public Integer getSno() {
		return sno;
	}

	public void setSno(Integer sno) {
		this.sno = sno;
	}

	public String getLogin_id() {
		return loginId;
	}

	public void setLogin_id(String login_id) {
		this.loginId = login_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}

	public Date getRegDatetime() {
		return regDatetime;
	}

	public void setRegDatetime(Date regDatetime) {
		this.regDatetime = regDatetime;
	}
	



	public int getActiveStatus() {
		return activeStatus;
	}



	public void setActiveStatus(int activeStatus) {
		this.activeStatus = activeStatus;
	}



	@Override
	public String toString() {
		return "Login [loginId=" + loginId + ", password=" + password + "]";
	}


	

	/*
	 * @Override public String toString() { return "Login [sno=" + sno +
	 * ", loginId=" + loginId + ", password=" + password + ", emailId=" + emailId +
	 * ", userType=" + userType + ", activeStatus=" + activeStatus +
	 * ", regDatetime=" + regDatetime + "]"; }
	 */
	
	
	
	
	
	

}

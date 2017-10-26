package com.house.entity;

import java.util.Date;

/**
 * 
  * @ClassName: User
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:16:48  
  * @desc:  管理员
  * @version: v1.0
 */
public class User {

	private int userId;

	private String userName;

	private Date createTime;

	private String phone;

	private String address;
	
	private String password;

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getUserId() {
		return userId;
	}

	public String getUserName() {
		return userName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}



}

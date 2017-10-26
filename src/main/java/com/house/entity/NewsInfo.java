package com.house.entity;

import java.util.Date;
/**
 * 
  * @ClassName: NewsInfo
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:17:22  
  * @desc:  新闻信息
  * @version: v1.0
 */
public class NewsInfo {

	private Integer id;
	//标题
	private String title;
	//前提描述
	private String about;
	//内容
	private String contents;
	
	private Date createTime;
	
	private String createUserName;
	
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getCreateUserName() {
		return createUserName;
	}
	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}
	
	
}

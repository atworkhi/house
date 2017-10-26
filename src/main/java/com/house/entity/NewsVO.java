package com.house.entity;

/**
 * 
  * @ClassName: NewsVO
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:17:06  
  * @desc:  新闻信息VO
  * @version: v1.0
 */
public class NewsVO {
	private Integer id;
	private String img;
	private String title;
	private String about;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	
}

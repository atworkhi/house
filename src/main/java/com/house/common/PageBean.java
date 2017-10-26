package com.house.common;

import java.util.List;

/**
 * 
  * @ClassName: PageBean
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:18:16  
  * @desc: 分页 
  * @version: v1.0  
  * @param <T>
 */
public class PageBean<T> {
	// 当前页
	private Integer localPage;
	// 总页数
	private Integer countPage;

	private Integer countNum;

	private List<T> list;
	
	private Integer limit;
	
	public PageBean() {
		// TODO Auto-generated constructor stub
	}
	
	public PageBean(List<T> list, Integer localPage, Integer countPage,Integer count) {
		this.list = list;
		this.countPage = countPage;
		this.localPage = localPage;
		this.countNum = count;
	}


	public Integer getLocalPage() {
		return localPage;
	}

	public void setLocalPage(Integer localPage) {
		this.localPage = localPage;
	}

	public Integer getCountPage() {
		return countPage;
	}

	public void setCountPage(Integer countPage) {
		this.countPage = countPage;
	}

	public Integer getCountNum() {
		return countNum;
	}

	public void setCountNum(Integer countNum) {
		this.countNum = countNum;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	@Override
	public String toString() {
		return "PageBean [localPage=" + localPage + ", countPage=" + countPage + ", list=" + list + "]";
	}

}

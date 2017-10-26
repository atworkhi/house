package com.house.common;
/**
 * 
  * @ClassName: HouseQuery
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:18:41  
  * @desc:  查询
  * @version: v1.0
 */
public class HouseQuery {
	
	//楼盘类型 1北京新房 2.北京周报新房
	private Integer houseType;
	//楼盘名称
	private String houseName;

	//是否精选房源 1.精选 0.非精选
	private Integer isBest;
	//是否为推荐房源
	private Integer isTuijian;
	
	private Integer offset = Integer.valueOf(1);
	private Integer limit = Integer.valueOf(15);

	public Integer getIsBest() {
		return isBest;
	}

	public void setIsBest(Integer isBest) {
		this.isBest = isBest;
	}

	public Integer getHouseType() {
		return houseType;
	}

	public void setHouseType(Integer houseType) {
		this.houseType = houseType;
	}

	public String getHouseName() {
		return houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public Integer getOffset() {
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	/**  
	 * @return the isTuijian  
	 */
	
	public Integer getIsTuijian() {
		return isTuijian;
	}

	/**  
	 * @param isTuijian the isTuijian to set  
	 */
	
	public void setIsTuijian(Integer isTuijian) {
		this.isTuijian = isTuijian;
	}

	
}

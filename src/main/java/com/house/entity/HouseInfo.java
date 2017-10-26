package com.house.entity;

import java.util.Date;
/**
 * 
  * @ClassName: HouseInfo
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:17:36  
  * @desc:  楼盘的字段
  * @version: v1.0
 */
public class HouseInfo {

	private int id;

	// 楼盘名称
	private String name;

	// 缩略图
	private String smallPhoto;

	// 详情图
	private String detailPhoto;

	// 楼盘标签
	private String labels;

	// 户型
	private String homeType;

	// 楼盘地址
	private String houseAddress;

	// 占地面积
	private String area;

	// 绿化率
	private String green;

	// 车位数
	private String parkNum;

	// 产权年限
	private String years;

	// 售楼处地址
	private String saleAddress;

	// 建筑面积
	private String areaCovered;

	// 容积率
	private String plotRatio;

	// 规划户数
	private String houses;

	// 装修情况
	private String decoration;

	// 物业公司
	private String property;

	// 楼盘类型
	// 用于区分楼盘为 1北京新房 2 北京周报新房
	private String houseType;
	
	//是否为精选房源
	private Integer isBest;
	
	//是否为推荐房源
	private Integer isTuijian;

	//添加用户
	private String createUser;

	//添加时间
	private Date createDate;

	//推荐理由
	private String description;

	// 楼盘电话
	private String phone;
	
	//价格
	private String price;
	
	//优惠活动
	private String discount;

	/**  
	 * @return the id  
	 */
	
	public int getId() {
		return id;
	}

	/**  
	 * @param id the id to set  
	 */
	
	public void setId(int id) {
		this.id = id;
	}

	/**  
	 * @return the name  
	 */
	
	public String getName() {
		return name;
	}

	/**  
	 * @param name the name to set  
	 */
	
	public void setName(String name) {
		this.name = name;
	}

	/**  
	 * @return the smallPhoto  
	 */
	
	public String getSmallPhoto() {
		return smallPhoto;
	}

	/**  
	 * @param smallPhoto the smallPhoto to set  
	 */
	
	public void setSmallPhoto(String smallPhoto) {
		this.smallPhoto = smallPhoto;
	}

	/**  
	 * @return the detailPhoto  
	 */
	
	public String getDetailPhoto() {
		return detailPhoto;
	}

	/**  
	 * @param detailPhoto the detailPhoto to set  
	 */
	
	public void setDetailPhoto(String detailPhoto) {
		this.detailPhoto = detailPhoto;
	}

	/**  
	 * @return the labels  
	 */
	
	public String getLabels() {
		return labels;
	}

	/**  
	 * @param labels the labels to set  
	 */
	
	public void setLabels(String labels) {
		this.labels = labels;
	}

	/**  
	 * @return the homeType  
	 */
	
	public String getHomeType() {
		return homeType;
	}

	/**  
	 * @param homeType the homeType to set  
	 */
	
	public void setHomeType(String homeType) {
		this.homeType = homeType;
	}

	/**  
	 * @return the houseAddress  
	 */
	
	public String getHouseAddress() {
		return houseAddress;
	}

	/**  
	 * @param houseAddress the houseAddress to set  
	 */
	
	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	/**  
	 * @return the area  
	 */
	
	public String getArea() {
		return area;
	}

	/**  
	 * @param area the area to set  
	 */
	
	public void setArea(String area) {
		this.area = area;
	}

	/**  
	 * @return the green  
	 */
	
	public String getGreen() {
		return green;
	}

	/**  
	 * @param green the green to set  
	 */
	
	public void setGreen(String green) {
		this.green = green;
	}

	/**  
	 * @return the parkNum  
	 */
	
	public String getParkNum() {
		return parkNum;
	}

	/**  
	 * @param parkNum the parkNum to set  
	 */
	
	public void setParkNum(String parkNum) {
		this.parkNum = parkNum;
	}

	/**  
	 * @return the years  
	 */
	
	public String getYears() {
		return years;
	}

	/**  
	 * @param years the years to set  
	 */
	
	public void setYears(String years) {
		this.years = years;
	}

	/**  
	 * @return the saleAddress  
	 */
	
	public String getSaleAddress() {
		return saleAddress;
	}

	/**  
	 * @param saleAddress the saleAddress to set  
	 */
	
	public void setSaleAddress(String saleAddress) {
		this.saleAddress = saleAddress;
	}

	/**  
	 * @return the areaCovered  
	 */
	
	public String getAreaCovered() {
		return areaCovered;
	}

	/**  
	 * @param areaCovered the areaCovered to set  
	 */
	
	public void setAreaCovered(String areaCovered) {
		this.areaCovered = areaCovered;
	}

	/**  
	 * @return the plotRatio  
	 */
	
	public String getPlotRatio() {
		return plotRatio;
	}

	/**  
	 * @param plotRatio the plotRatio to set  
	 */
	
	public void setPlotRatio(String plotRatio) {
		this.plotRatio = plotRatio;
	}

	/**  
	 * @return the houses  
	 */
	
	public String getHouses() {
		return houses;
	}

	/**  
	 * @param houses the houses to set  
	 */
	
	public void setHouses(String houses) {
		this.houses = houses;
	}

	/**  
	 * @return the decoration  
	 */
	
	public String getDecoration() {
		return decoration;
	}

	/**  
	 * @param decoration the decoration to set  
	 */
	
	public void setDecoration(String decoration) {
		this.decoration = decoration;
	}

	/**  
	 * @return the property  
	 */
	
	public String getProperty() {
		return property;
	}

	/**  
	 * @param property the property to set  
	 */
	
	public void setProperty(String property) {
		this.property = property;
	}

	/**  
	 * @return the houseType  
	 */
	
	public String getHouseType() {
		return houseType;
	}

	/**  
	 * @param houseType the houseType to set  
	 */
	
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}

	/**  
	 * @return the isBest  
	 */
	
	public Integer getIsBest() {
		return isBest;
	}

	/**  
	 * @param isBest the isBest to set  
	 */
	
	public void setIsBest(Integer isBest) {
		this.isBest = isBest;
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

	/**  
	 * @return the createUser  
	 */
	
	public String getCreateUser() {
		return createUser;
	}

	/**  
	 * @param createUser the createUser to set  
	 */
	
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	/**  
	 * @return the createDate  
	 */
	
	public Date getCreateDate() {
		return createDate;
	}

	/**  
	 * @param createDate the createDate to set  
	 */
	
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	/**  
	 * @return the description  
	 */
	
	public String getDescription() {
		return description;
	}

	/**  
	 * @param description the description to set  
	 */
	
	public void setDescription(String description) {
		this.description = description;
	}

	/**  
	 * @return the phone  
	 */
	
	public String getPhone() {
		return phone;
	}

	/**  
	 * @param phone the phone to set  
	 */
	
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**  
	 * @return the price  
	 */
	
	public String getPrice() {
		return price;
	}

	/**  
	 * @param price the price to set  
	 */
	
	public void setPrice(String price) {
		this.price = price;
	}

	/**  
	 * @return the discount  
	 */
	
	public String getDiscount() {
		return discount;
	}

	/**  
	 * @param discount the discount to set  
	 */
	
	public void setDiscount(String discount) {
		this.discount = discount;
	}

	/*  
	 * @see java.lang.Object#toString()  
	 */  
	    
	@Override
	public String toString() {
		return "HouseInfo [id=" + id + ", name=" + name + ", smallPhoto=" + smallPhoto + ", detailPhoto=" + detailPhoto
				+ ", labels=" + labels + ", homeType=" + homeType + ", houseAddress=" + houseAddress + ", area=" + area
				+ ", green=" + green + ", parkNum=" + parkNum + ", years=" + years + ", saleAddress=" + saleAddress
				+ ", areaCovered=" + areaCovered + ", plotRatio=" + plotRatio + ", houses=" + houses + ", decoration="
				+ decoration + ", property=" + property + ", houseType=" + houseType + ", isBest=" + isBest
				+ ", isTuijian=" + isTuijian + ", createUser=" + createUser + ", createDate=" + createDate
				+ ", description=" + description + ", phone=" + phone + ", price=" + price + ", discount=" + discount
				+ "]";
	}
	

	

}

package com.house.service;


import com.house.common.PageBean;
import com.house.entity.HouseInfo;
import com.house.entity.NewsInfo;
/**
 * 
  * @ClassName: HouseInfoService
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:43:56  
  * @desc:  前台房屋service
  * @version: v1.0
 */
public interface HouseInfoService {

	/**
	 * 添加楼盘信息
	 * 
	 * @param houseInfo
	 */
	void addHouseInfo(HouseInfo houseInfo);

	/**
	 * 删除房屋信息
	 * 
	 * @param
	 * @throws Exception 
	 */
	void deleteHouseInfo(Integer[] houseId, String filePath) throws Exception;
	
	/**
	 * 分页查询
	 * @param
	 * @return
	 */
	PageBean<HouseInfo> getHouesInfoByPage(Integer houseType, Integer offset, Integer limit, Integer isBest, Integer isTuijian, String houseName);

	/**
	 * 楼盘信息加精、取精
	 */
	void setHouseBest(int id);

	/**
	 * 	是否是推荐楼盘
	 */
	void setHouseTuijian(int id);
	/**
	 * 查询房源信息
	 * @param id
	 * @return
	 */
	HouseInfo getHouesInfoById(Integer id);

	/**
	 * 房源信息修改
	 * @param house
	 */
	void updateHouse(HouseInfo house);

	/**
	 * 保存案件信息
	 * @param news
	 * @param
	 * @return
	 */
	boolean saveNews(NewsInfo news);

	/**
	 * 
	 * @param offset
	 * @param title
	 * @return
	 */
	PageBean<NewsInfo> getNewsInfoByPage(int offset, String title);

	/**
	 * 查询咨询
	 * @param id
	 * @return
	 */
	NewsInfo getNewsById(int id);

	/**
	 * 删除咨询
	 * @param id
	 */
	void deleteNewsInfo(int id);

	/**
	 * 更新资讯
	 * @param news
	 */
	void updateNews(NewsInfo news);

	
	
}

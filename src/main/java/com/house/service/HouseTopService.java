package com.house.service;

import java.util.List;

import com.house.common.PageBean;
import com.house.entity.HouseInfo;

/**
 * 前台房屋信息Service
 * @author zhangbo
 *
 */
public interface HouseTopService {

	/**
	 * 获取精选房源
	 * @return
	 */
	List<HouseInfo> getBestHouseList();

	/**
	 * 获取推荐房源
	 * @return
	 */
	List<HouseInfo> getTuijianHouseList(Integer houseType);
	/**
	 * 获取北京新房
	 * @param page
	 * @return
	 */
	PageBean getNewHouseListByPage(Integer page);

	/**
	 * 获取南京新房
	 * @param page
	 * @return
	 */
	PageBean getNearHouseListByPage(Integer page);

	/**
	 * 获取北海新房
	 * @param page
	 * @return
	 */
	PageBean getBeihaiListByPage(Integer page);

	/**
	 * 获取海南新房
	 * @param page
	 * @return
	 */
	PageBean getHainanListByPage(Integer page);
	

	/**
	 * 查看楼盘详细信息
	 * @param id
	 * @return
	 */
	HouseInfo getHouseInfoById(Integer id);

	
}

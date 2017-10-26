package com.house.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.house.entity.HouseInfo;

/**
 * 
  * @ClassName: HouseTopDao
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:04:55  
  * @desc:  前端dao
  * @version: v1.0
 */
@Repository
public interface HouseTopDao {

	/**
	 * 获取楼盘信息
	 * 
	 * @param houseType
	 *            楼盘类型
	 * @param
	 *
	 * @param
	 *
	 * @return
	 */
	List<HouseInfo> getHouseList(@Param("houseType") Integer houseType, @Param("offset") Integer offset,
                                 @Param("limit") Integer limit);

	/**
	 * 获取楼盘信息数量
	 * 
	 * @param houseType
	 * @return
	 */
	int getHouseCount(Integer houseType);

	/**
	 * 获取楼盘详情
	 * 
	 * @param id
	 * @return
	 */
	HouseInfo getHouseInfoById(@Param("id") Integer id);

	/**
	 * 获取精选房源
	 * @return
	 */
	List<HouseInfo> getBestHouse();
	
	/**
	 * 获取推荐房源 智能
	 * @return
	 */
	List<HouseInfo> getTuijianHouse(@Param("houseType") Integer houseType);

}

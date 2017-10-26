package com.house.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.house.entity.HouseInfo;
import com.house.entity.NewsInfo;

/**
 * 
 * @ClassName: HouseInfoDao
 * @Description: TODO
 * @author: 韩星星
 * @createTime: 2017年10月22日 下午7:33:15
 * @desc: 房屋信息dao
 * @version: v1.0
 */
@Repository
public interface HouseInfoDao {

	/**
	 * 获取楼盘信息列表
	 * 
	 * @param houseType
	 *            房屋类型
	 * @param offset
	 * @param limit
	 * @param
	 * @return
	 */
	List<HouseInfo> getHouseInfoList(@Param("houseType") int houseType, @Param("isBest") int isBest, @Param("isTuijian") int isTuijian,
                                     @Param("offset") int offset, @Param("limit") int limit, @Param("houseName") String houseName);

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
	 */
	void deleteHouseInfo(int houseId);

	/**
	 * 查询总数量
	 * 
	 * @param houseType
	 * @param isBest
	 * @param
	 * @param
	 * @param houseName
	 * @return
	 */
	int getHouseInfoSum(@Param("houseType") Integer houseType, @Param("isBest") Integer isBest, @Param("isTuijian") Integer isTuijian,
                        @Param("houseName") String houseName);

	/**
	 * 根据Id查询对象
	 * 
	 * @param id
	 * @return
	 */
	HouseInfo getHouseInfoById(Integer id);

	/**
	 * 是否为精选
	 * @param isBest
	 */
	void setHouseBest(@Param("id") int id, @Param("isBest") int isBest);
	/**
	 * 		
	 *是否为推荐
	 * @param id
	 * @param isTuijian
	 */
	
	void setHouseTuijian(@Param("id") int id, @Param("isTuijian") int isTuijian);
	/**
	 * 房源信息修改
	 * 
	 * @param house
	 */
	void updateHouse(HouseInfo house);

	/**
	 * 添加资讯信息
	 * 
	 * @param
	 */
	void saveNews(NewsInfo news);

	/**
	 * 分页查询资讯
	 * 
	 * @param offset
	 * @param title
	 * @return
	 */
	List<NewsInfo> getNewsInfoByPage(@Param("offset") int offset, @Param("limit") int limit,
                                     @Param("title") String title);

	/**
	 * 查询资讯总记录
	 * 
	 * @param title
	 * @return
	 */
	int getNewsInfoSum(@Param("title") String title);

	/**
	 * 查询咨询信息
	 * 
	 * @param id
	 * @return
	 */
	NewsInfo getNewsInfoById(int id);

	/**
	 * 删除资讯
	 * 
	 * @param id
	 */
	void deleteNewsInfo(int id);

	/**
	 * 更新资讯
	 * 
	 * @param news
	 */
	void updateNewsInfo(NewsInfo news);

}

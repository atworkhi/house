package com.house.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.house.common.PageBean;
import com.house.common.SystemConfig;
import com.house.dao.HouseTopDao;
import com.house.entity.HouseInfo;
import com.house.service.HouseTopService;

/**
 * 
  * @ClassName: HouseTopServiceimpl
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:59:07  
  * @desc: 前段显示service 
  * @version: v1.0
 */
@Service
public class HouseTopServiceimpl implements HouseTopService {

	@Autowired
	private HouseTopDao houseTopDao;

	@Override
	public List<HouseInfo> getBestHouseList() {
		return houseTopDao.getBestHouse();
	}



	@Override
	public List<HouseInfo> getTuijianHouseList(Integer houseType) {
		//TODO
		return houseTopDao.getTuijianHouse(houseType);
		    
	}

	@Override
	public PageBean getNewHouseListByPage(Integer page) {
		return getHouseListByPageAndType(page, SystemConfig.BJ_NEW_HOUSE);
	}

	@Override
	public PageBean getNearHouseListByPage(Integer page) {

		return getHouseListByPageAndType(page, SystemConfig.NANJING);
	}

	@Override
	public PageBean getBeihaiListByPage(Integer page) {
		return getHouseListByPageAndType(page, SystemConfig.BEIHAI);
	}

	@Override
	public PageBean getHainanListByPage(Integer page) {
		return getHouseListByPageAndType(page, SystemConfig.HAINAN);
	}

	/**
	 * 根据页码和类型查询列表
	 * 
	 * @param page
	 * @param type
	 * @return
	 */

	private PageBean getHouseListByPageAndType(int page, int type) {
		int pageSize = SystemConfig.TOP_PAGE_SIZE;
		int offset = (page - 1) * pageSize;
		List<HouseInfo> list = houseTopDao.getHouseList(type, offset, pageSize);
		int count = houseTopDao.getHouseCount(type);
		PageBean<HouseInfo> pageBean = new PageBean<HouseInfo>();
		pageBean.setLocalPage(page);
		pageBean.setList(list);
		int countPage = getCountPage(count, pageSize);
		pageBean.setCountPage(countPage);
		return pageBean;
	}

	/**
	 * 根据当前页容量计算多少页
	 * 
	 * @param count
	 * @param pageSize
	 * @return
	 */

	private int getCountPage(int count, int pageSize) {
		int countPage = count % pageSize == 0 ? count / pageSize : count / pageSize + 1;
		return countPage;
	}


	@Override
	public HouseInfo getHouseInfoById(Integer id) {
		return houseTopDao.getHouseInfoById(id);
	}




}

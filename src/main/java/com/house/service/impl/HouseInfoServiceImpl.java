package com.house.service.impl;

import java.io.File;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.house.common.PageBean;
import com.house.common.SystemConfig;
import com.house.dao.HouseInfoDao;
import com.house.entity.HouseInfo;
import com.house.entity.NewsInfo;
import com.house.service.HouseInfoService;

/**
 * 
  * @ClassName: HouseInfoServiceImpl
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:51:44  
  * @desc:  后台页面实现类
  * @version: v1.0
 */
@Service
public class HouseInfoServiceImpl implements HouseInfoService {

	@Autowired
	private HouseInfoDao houseInfoDao;


	@Override
	@Transactional
	public void addHouseInfo(HouseInfo houseInfo) {
		houseInfoDao.addHouseInfo(houseInfo);
	}


	@Override
	@Transactional
	public void deleteHouseInfo(Integer[] houseIds, String filePath)
			throws Exception {
		if(houseIds==null){
			return;
		}
		for (Integer id : houseIds) {
			HouseInfo house = houseInfoDao.getHouseInfoById(id);
			String detailPhoto = house.getDetailPhoto();
			String smallPhoto = house.getSmallPhoto();
			deleteFile(detailPhoto, filePath);
			deleteFile(smallPhoto, filePath);
			houseInfoDao.deleteHouseInfo(id);
		}
	}

	/**
	 * 删除文件
	 * 
	 * @param fileNames
	 *            文件拼接串
	 * @param filePath
	 *            根目录
	 * @throws Exception
	 */
	private void deleteFile(String fileNames, String filePath) throws Exception {
		if (fileNames != null) {
			String[] files = fileNames.split(",");
			for (String f : files) {
				File file = new File(filePath + File.separator + f);
				if (file.exists() && file.isFile()) {
					file.delete();
				}
			}
		}
	}

	@Override
	public PageBean<HouseInfo> getHouesInfoByPage(Integer houseType,
			Integer isBest, Integer isTuijian,Integer offset, Integer limit, String houseName) {
		houseType = houseType == null ? 0 : houseType;
		isBest = isBest == null ? 0 : isBest;
		isTuijian = Integer.valueOf(isTuijian == null ? 0 : isTuijian.intValue());
		offset = offset == null ? 1 : offset;
		limit = (limit != null && limit > 0) ? limit : SystemConfig.limit;
		List<HouseInfo> list = houseInfoDao.getHouseInfoList(houseType, isBest,isTuijian,
				(offset - 1) * limit, limit, houseName);
		int count = houseInfoDao.getHouseInfoSum(houseType, isBest,isTuijian, houseName);
		int countPage = 0;
		if (count % limit == 0) {
			countPage = count / limit;
		} else {
			countPage = count / limit + 1;
		}
		PageBean<HouseInfo> bean = new PageBean<HouseInfo>();
		bean.setCountNum(count);
		bean.setList(list);
		bean.setCountPage(countPage);
		bean.setLocalPage(offset);
		return bean;
	}

	@Override
	@Transactional
	public void setHouseBest(int id) {
		HouseInfo info = houseInfoDao.getHouseInfoById(id);
		if (info != null) {
			int isBest = info.getIsBest();
			if (isBest == 0) {
				isBest = SystemConfig.BEST_HOUSE;
			} else {
				isBest = 0;
			}
			houseInfoDao.setHouseBest(id, isBest);
		}
	}


	@Override
	@Transactional
	public void setHouseTuijian(int id) {
		HouseInfo info=houseInfoDao.getHouseInfoById(id);
		if(info!=null) {
			int isTuijian=info.getIsTuijian();
			if(isTuijian==0) {
				isTuijian=SystemConfig.TUIJIAN_HOUSE;
			}else {
				isTuijian=0;
			}
			houseInfoDao.setHouseTuijian(id, isTuijian);
		}
		    
	}
	
	@Override
	public HouseInfo getHouesInfoById(Integer id) {
		return houseInfoDao.getHouseInfoById(id);
	}

	@Override
	@Transactional
	public void updateHouse(HouseInfo house) {
		if (house != null) {
			houseInfoDao.updateHouse(house);
		}
	}

	@Override
	@Transactional
	public boolean saveNews(NewsInfo news) {
		boolean flag = false;
		if (news != null) {
			news.setCreateTime(new Date());
			houseInfoDao.saveNews(news);
			flag = true;
		}
		return flag;
	}

	@Override
	public PageBean<NewsInfo> getNewsInfoByPage(int offset, String title) {
		PageBean<NewsInfo> bean = new PageBean<NewsInfo>();
		try {

			int limit = SystemConfig.limit;
			int countPage = 0;
			List<NewsInfo> list = houseInfoDao.getNewsInfoByPage((offset - 1) * limit, limit,
					title);
			int count = houseInfoDao.getNewsInfoSum(title);
			if (count % SystemConfig.limit == 0) {
				countPage = count / limit;
			} else {
				countPage = count / limit + 1;
			}

			bean.setCountNum(count);
			bean.setList(list);
			bean.setCountPage(countPage);
			bean.setLocalPage(offset);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	@Override
	public NewsInfo getNewsById(int id) {
		
		return houseInfoDao.getNewsInfoById(id);
	}

	@Override
	@Transactional
	public void deleteNewsInfo(int id) {
		houseInfoDao.deleteNewsInfo(id);
	}

	@Override
	@Transactional
	public void updateNews(NewsInfo news) {
		houseInfoDao.updateNewsInfo(news);
	}

	

}

package com.house.service;

import com.house.common.PageBean;
import com.house.entity.NewsVO;
/**
 * 
  * @ClassName: NewsService
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 下午3:06:59  
  * @desc:  
  * @version: v1.0
 */
public interface NewsService {

	/**
	 * 分页查询资讯列表
	 * @param page
	 * @param topPageSize
	 * @return
	 */
	PageBean<NewsVO> getNewsListByPage(int page, int topPageSize);

	
	
}

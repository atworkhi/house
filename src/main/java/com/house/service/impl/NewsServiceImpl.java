package com.house.service.impl;

import org.springframework.stereotype.Service;

import com.house.common.PageBean;
import com.house.entity.NewsVO;
import com.house.service.NewsService;
/**
 * 资讯信息service
 * @author zhangbo
 *
 */
@Service
public class NewsServiceImpl implements NewsService {
	@Override
	public PageBean<NewsVO> getNewsListByPage(int page, int topPageSize) {
		return null;
	}

	
	
}

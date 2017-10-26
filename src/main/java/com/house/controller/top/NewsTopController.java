package com.house.controller.top;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.house.common.PageBean;
import com.house.entity.NewsInfo;
import com.house.entity.NewsVO;
import com.house.service.HouseInfoService;

/**
 * 
  * @ClassName: NewsTopController
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 下午12:04:42  
  * @desc:  新闻前段控制器
  * @version: v1.0
 */
@Controller
public class NewsTopController {

	@Autowired
	private HouseInfoService houseInfoService;

	@RequestMapping("/news")
	public String list(
			@RequestParam(required = false, defaultValue = "1") int page,
			Model model) throws Exception {
		// 数据转换用户显示图片和摘要
		PageBean<NewsVO> voBean = new PageBean<NewsVO>();
		List<NewsVO> voList = new ArrayList<NewsVO>();
		PageBean<NewsInfo> newsBean = houseInfoService.getNewsInfoByPage(page,
				null);
		List<NewsInfo> newsList = newsBean.getList();
		for (NewsInfo news : newsList) {
			NewsVO vo = NewsInfo2NewsVO(news);
			voList.add(vo);
		}
		voBean.setList(voList);
		voBean.setCountNum(newsBean.getCountNum());
		voBean.setCountPage(newsBean.getCountPage());
		voBean.setLocalPage(newsBean.getLocalPage());
		model.addAttribute("pageBean", voBean);
		return "top/news";
	}

	/**
	 * 资讯详情
	 * @param model
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("news/detail")
	public String newsDetail(Model model,@RequestParam(required=true)int id) throws Exception{
		NewsInfo news = houseInfoService.getNewsById(id);
		if(news==null){
			throw new Exception("404");
		}
		model.addAttribute("news", news);
		return "top/newsDetail";
	}
	
	
	/**
	 * 关于我们
	 * @return
	 */
	@RequestMapping("company")
	public String company(){
		return "top/company";
	}
	
	
	
	/**
	 * 关于我们
	 * @return
	 */
	@RequestMapping("link")
	public String link(){
		return "top/link";
	}
	
	/**
	 * 数据转换
	 * 
	 * @param news
	 * @return
	 */
	private NewsVO NewsInfo2NewsVO(NewsInfo news) {
		NewsVO vo = new NewsVO();
		try {
			if (news != null) {
				vo.setId(news.getId());
				vo.setTitle(news.getTitle());
				vo.setImg(getImgSrc(news.getContents()));
				vo.setAbout(news.getAbout());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	/**
	 * 正则获取img src
	 * 
	 * @param html
	 * @return
	 */
	private String getImgSrc(String html) {
		String result = "";
		String imagePatternStr = "<img[\\w\\W]*?src=[\"|\']?([\\w\\W]*?)(jpg|png)[\\w\\W]*?/>";
		Pattern imagePattern = Pattern.compile(imagePatternStr,
				Pattern.CASE_INSENSITIVE);
		Matcher matcher = imagePattern.matcher(html);
		while (matcher.find()) {
			// img src中图片的url前缀
			String imageFragmentURL = matcher.group(1);
			// img src中图片的url后缀
			String imageFragmentSuffix = matcher.group(2);
			String src = imageFragmentURL + imageFragmentSuffix;
			if (StringUtils.isNotEmpty(src)) {
				result = src;
				break;
			}
		}
		return result;
	}

	/**
	 * 
	 * @param html
	 * @return
	 */
	private String getAbout(String html) {
		String result = "";
		String imagePatternStr = "<p>((\\w|\\W)*?)</p>";
		Pattern imagePattern = Pattern.compile(imagePatternStr,
				Pattern.CASE_INSENSITIVE);
		Matcher matcher = imagePattern.matcher(html);
		while (matcher.find()) {
			String str = matcher.group();
		}
		return result;

	}

}

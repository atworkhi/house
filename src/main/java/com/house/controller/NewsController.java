package com.house.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.house.common.PageBean;
import com.house.common.SystemConfig;
import com.house.entity.NewsInfo;
import com.house.entity.User;
import com.house.service.HouseInfoService;

/**
 * 
  * @ClassName: NewsController
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 下午12:03:56  
  * @desc:  新闻发布controller
  * @version: v1.0
 */
@Controller
@RequestMapping("/back/news")
public class NewsController {

	private static final Logger logger = Logger.getLogger(NewsController.class);

	@Autowired
	private HouseInfoService houseInfoService;

	/**
	 * 跳转到咨询添加页面
	 * 
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String addNews() {
		return "back/newsAdd";
	}
	
	/**
	 * 咨询信息列表
	 * 
	 * @return
	 */
	@RequestMapping("/list")
	public String houseList(Model model,@RequestParam(required=false,defaultValue="1")int offset,String title) {
		PageBean<NewsInfo> pageBean = new PageBean<NewsInfo>();
		pageBean = houseInfoService.getNewsInfoByPage(offset,title);
		model.addAttribute("newsBean", pageBean);

		model.addAttribute("title", title);

		return "back/newsList";
	}

	/**
	 * 
	 * @return
	 */
	@RequestMapping("/save")
	public String saveNews(NewsInfo news,HttpSession session) {
		User user = (User) session.getAttribute(SystemConfig.LOGIN_USER);
		if (news != null) {
			news.setCreateUserName(user.getUserName());
			boolean flag = houseInfoService.saveNews(news);
		}
		return "redirect:list";
	}
	
	//文章修改
	@RequestMapping("/edit")
	public String edit(@RequestParam(required=true)int id,
			Model model){
		NewsInfo news = houseInfoService.getNewsById(id);
		model.addAttribute("news", news);
		return "back/newsEdit";
	}
	
	/**
	 * 删除资讯
	 * @param id
	 * @return
	 */
	@RequestMapping("delete")
	public String delete(@RequestParam(required=true)int id){
		houseInfoService.deleteNewsInfo(id);
		return "redirect:list";
	}
	
	@RequestMapping("update")
	public String update(NewsInfo news){
		if(news!=null){
			houseInfoService.updateNews(news);
		}
		return "redirect:list";
	}
}

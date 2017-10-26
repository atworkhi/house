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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.house.common.PageBean;
import com.house.entity.HouseInfo;
import com.house.entity.NewsInfo;
import com.house.entity.NewsVO;
import com.house.service.HouseInfoService;
import com.house.service.HouseTopService;
/**
 * 
  * @ClassName: HouseTopController
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午6:08:56  
  * @desc:  前端控制器
  * @version: v1.0
 */
@Controller
public class HouseTopController {


	@Autowired
	private HouseTopService houseTopService;
	
	@Autowired
	private HouseInfoService houseInfoService;

	@RequestMapping("/index")
	public String getBestHouseList(Model model) {
		List<HouseInfo> list = houseTopService.getBestHouseList();
		List<NewsVO> voList = new ArrayList<NewsVO>();
		PageBean<NewsInfo> newsBean = houseInfoService.getNewsInfoByPage(1,
				null);
		List<NewsInfo> newsList = newsBean.getList();
		if(newsList.size()>=4){
			newsList = newsList.subList(0,4);
		}
		for (NewsInfo news : newsList) {
			NewsVO vo = NewsInfo2NewsVO(news);
			voList.add(vo);
		}
		model.addAttribute("bestlist", list);

		model.addAttribute("newsList", voList);
		
		return "top/index";
	}

	/**
	 * 获取北京新房列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/bj-new", method = RequestMethod.GET)
	public String getNewHouseList(Model model,@RequestParam(
			required=false,defaultValue="1") Integer page) {
		PageBean<HouseInfo> p = houseTopService.getNewHouseListByPage(page);
		model.addAttribute("pageBean", p);
		
		return "top/bj-new";
	}

	/**
	 * 获取北京周边新房楼盘
	 * 
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/nanjing", method = RequestMethod.GET)
	public String getNearHouseList(Model model,
			@RequestParam(required = false, defaultValue = "1") Integer page) {
		PageBean<HouseInfo> p = houseTopService.getNearHouseListByPage(page);
		model.addAttribute("pageBean", p);
		
		return "top/nanjing";
	}

	/**
	 * 获取北海楼盘
	 *
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/beihai", method = RequestMethod.GET)
	public String getBeihaiList(Model model,
								   @RequestParam(required = false, defaultValue = "1") Integer page) {
		PageBean<HouseInfo> p = houseTopService.getBeihaiListByPage(page);
		model.addAttribute("pageBean", p);

		return "top/beihai";
	}

	/**
	 * 获取海南楼盘
	 *
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/hainan", method = RequestMethod.GET)
	public String getHainanList(Model model,
								@RequestParam(required = false, defaultValue = "1") Integer page) {
		PageBean<HouseInfo> p = houseTopService.getHainanListByPage(page);
		model.addAttribute("pageBean", p);

		return "top/hainna";
	}


	/**
	 * 查看北京新楼盘详细信息
	 * 
	 * @param
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/bj-new/detail", method = RequestMethod.GET)
	public String getBjNewDetail(Model model, @RequestParam(value="id",required=true) int id) throws Exception {

		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);

		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));


		if(houseInfo==null){
			throw new Exception("404");
		}
		model.addAttribute("house", houseInfo);

		model.addAttribute("tuijianList", list);
		
		return "top/house-detail";
	}

	/**
	 * 查看南京楼盘详细信息
	 * 
	 * @param
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/nanjing/detail", method = RequestMethod.GET)
	public String getBjNearDetail(Model model, @RequestParam(value="id",required=true)int id) throws Exception {
		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);
		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));

		if(houseInfo==null){
			throw new Exception("404");
		}
		model.addAttribute("house", houseInfo);

		model.addAttribute("tuijianList", list);
		return "top/house-detail";
	}


	/**
	 * 查看北海楼盘详细信息
	 *
	 * @param
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/beihai/detail", method = RequestMethod.GET)
	public String getBeihaiDetail(Model model, @RequestParam(value="id",required=true)int id) throws Exception {
		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);

		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));


		if(houseInfo==null){
			throw new Exception("404");
		}

		model.addAttribute("house", houseInfo);

		model.addAttribute("tuijianList", list);
		return "top/house-detail";
	}

	/**
	 * 查看北海楼盘详细信息
	 *
	 * @param
	 * @return
	 * @throws Exception
	 */

	@RequestMapping(value = "/hainan/detail", method = RequestMethod.GET)
	public String getHainnaDetail(Model model, @RequestParam(value="id",required=true)int id) throws Exception {
		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);
		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));

		if(houseInfo==null){
			throw new Exception("404");
		}
		model.addAttribute("house", houseInfo);

		model.addAttribute("tuijianList", list);

		return "top/house-detail";
	}

	/**
	 * 查看精选楼盘详细信息
	 * 
	 * @param
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/best/detail", method = RequestMethod.GET)
	public String getBjBestDetail(Model model, @RequestParam(value="id",required=true)int id) throws Exception {
		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);

		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));

		if(houseInfo==null){
			throw new Exception("404");
		}
		model.addAttribute("house", houseInfo);
		model.addAttribute("tuijianList", list);
		return "top/house-detail";
	}

	/**
	 * 		
	 * 推荐楼盘
	 */
	@RequestMapping(value = "/tuijian/detail", method = RequestMethod.GET)
	public String getBjTtuijianDetail(Model model, @RequestParam(value="id",required=true)int id) throws Exception {

		HouseInfo houseInfo = houseTopService.getHouseInfoById(id);
		List<HouseInfo> list = houseTopService.getTuijianHouseList(Integer.parseInt(houseInfo.getHouseType()));
		if(houseInfo==null){
			throw new Exception("404");
		}
		model.addAttribute("house", houseInfo);
		model.addAttribute("tuijianList", list);
		return "top/house-detail";
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

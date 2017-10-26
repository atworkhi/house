package com.house.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.house.common.HouseQuery;
import com.house.common.PageBean;
import com.house.common.SystemConfig;
import com.house.entity.HouseInfo;
import com.house.service.HouseInfoService;

/**
 * 
  * @ClassName: HouseInfoController
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月22日 下午5:26:11  
  * @desc:  新房信息后管理
  * @version: v1.0
 */
@Controller
@RequestMapping("/back/house")
public class HouseInfoController {

	private static final Logger logger = Logger.getLogger(HouseInfoController.class);

	@Autowired
	private HouseInfoService houseInfoService;

	@RequestMapping("/addPage")
	public String toAdd() {
		return "back/houseAdd";
	}

	@RequestMapping("/manage")
	public String manage(){
		return "back/manage";
	}
	
	/**
	 * 楼盘信息列表
	 * 
	 * @return
	 */
	@RequestMapping("/list")
	public String houseList(Model model, HouseQuery query) {
		PageBean<HouseInfo> pageBean = new PageBean<HouseInfo>();
		pageBean = houseInfoService.getHouesInfoByPage(query.getHouseType(),
				query.getIsBest(),query.getIsTuijian(), query.getOffset(), query.getLimit(), query
						.getHouseName());
		model.addAttribute("houseBean", pageBean);

		model.addAttribute("query", query);

		return "back/houseList";
	}

	/**
	 * 楼盘信息保存
	 * 
	 * @param house
	 * @param request
	 * @param
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/houseAdd", method = RequestMethod.POST)
	public String houseAdd(HttpServletRequest request, HouseInfo house, @RequestParam("file1") MultipartFile file1,
			@RequestParam("file2") MultipartFile[] file2) {

		String pathName = SystemConfig.HOUSE_IMG_SAVEPATH;
		String realPath = request.getSession().getServletContext().getRealPath(pathName);
		try {
			if (!file1.isEmpty()) {
				String smallPhotoName = saveFile(realPath, file1);
				house.setSmallPhoto(smallPhotoName);
			}
			StringBuffer sb = new StringBuffer();
			for (MultipartFile f : file2) {
				if (!f.isEmpty()) {
					String detailPhotoName = saveFile(realPath, f);
					sb.append(detailPhotoName + ",");
				}
				house.setDetailPhoto(sb.toString());
			}
			house.setCreateDate(new Date());
			houseInfoService.addHouseInfo(house);
		} catch (Exception e) {
			logger.error("文件保存失败", e);
		}
		return "redirect:/back/house/list";

	}

	
	/**
	 * 删除楼盘信息
	 * @param request
	 * @param houseId
	 * @return
	 */
	@RequestMapping("/houseDelete")
	public String houseDelete(HttpServletRequest request, Integer[] houseId) {
		String realPath = request.getSession().getServletContext().getRealPath("upload");
		try {
			if (houseId != null) {
				houseInfoService.deleteHouseInfo(houseId, realPath);
			}
		} catch (Exception e) {
			logger.error("删除房屋信息失败", e);
		}
		return "redirect:list";
	}

	
	
	/**
	 * 加精取经
	 * 
	 * @param id
	 * @param
	 * @return
	 */
	@RequestMapping("/doBest")
	public String doBest(@RequestParam(value = "id", required = true) int id) {
		try {
			houseInfoService.setHouseBest(id);
		} catch (Exception e) {
			logger.error("加精取精房源异常", e);
		}
		return "redirect:list";
	}
	
	/**
	 * 加精取经
	 * 
	 * @param id
	 * @param
	 * @return
	 */
	@RequestMapping("/doTuijian")
	public String doTuijian(@RequestParam(value = "id", required = true) int id) {
		try {
			houseInfoService.setHouseTuijian(id);
		} catch (Exception e) {
			logger.error("推荐房源异常", e);
		}
		return "redirect:list";
	}

	/**
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/toUpdate")
	public String toUpdateHouse(Model model,
			@RequestParam(value = "id", required = true) Integer id) {

		try {
			HouseInfo houseInfo = houseInfoService.getHouesInfoById(id);
			model.addAttribute("house",houseInfo);
		} catch (Exception e) {
			logger.error("查询房源信息失败",e);
		}
		
		return "back/houseUpdate";
	}
	
	@RequestMapping("/houseUpdate")
	public String updateHouse(HouseInfo house){
		try{
			if(house!=null){
				houseInfoService.updateHouse(house);
			}
		}catch(Exception e){
			logger.error("房源信息修改异常",e);
		}
		return "redirect:list";
	}
	
	
	
	/**
	 * 保存文件
	 * 
	 * @throws Exception
	 */
	private String saveFile(String filePath, MultipartFile multipartFile)
			throws Exception {
		String uid = UUID.randomUUID().toString();
		File file = new File(filePath);
		if (!file.exists()) {
			file.mkdirs();
		}
		String fileName = multipartFile.getOriginalFilename();
		String newName = uid + fileName.substring(fileName.lastIndexOf("."));
		FileOutputStream fs = new FileOutputStream(filePath + File.separator
				+ newName);
		InputStream stream = multipartFile.getInputStream();
		byte[] buffer = new byte[1024 * 1024];
		int bytesum = 0;
		while ((bytesum = stream.read(buffer)) != -1) {
			fs.write(buffer, 0, bytesum);
			fs.flush();
		}
		fs.close();
		stream.close();
		return SystemConfig.HOUSE_IMG_SAVEPATH + File.separator + newName;
	}

}

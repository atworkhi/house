/**   
 * @Title: BgImageController.java
 * @Package com.com.controller
 * @Description: TODO(用一句话描述该文件做什么)
 * @author HanGX  
 * @date 2017年10月24日 上午10:28:30
 * @version V1.0   
 */
    
package com.house.controller;



import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.house.common.SystemConfig;

/**   
  * @ClassName: BgImageController
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月24日 上午10:28:30  
  * @desc:  
  * @version: v1.0    
  */
@Service
@RequestMapping("/back/bg/")
public class BgImageController {

	@RequestMapping(value="/image",method=RequestMethod.GET)
	public String toBgImage() {
		return "back/bgImage";
	}
	
	@RequestMapping(value="/change")
	public String bgImage(Model model,@RequestParam("bgimage")MultipartFile bgimage,
			HttpServletRequest request) {
		if(bgimage!=null) {
			//文件原始名：
			String fileName=bgimage.getOriginalFilename();
			//文件后缀
			String fileType=fileName.substring(fileName.lastIndexOf("."),fileName.length());
			
			if(fileType.equals(".jpg")) {
				//字节
				long size=bgimage.getSize();
				if(size>3145728) {
					model.addAttribute("info", "图片大小不符合");
					return "back/info";
				}else {
					
					String newName="banner"+fileType;

					String pathName = SystemConfig.BG_IMAGE;

					String path = request.getSession().getServletContext().getRealPath(pathName);
					
					//创建目录
					File file=new File(path);
					if(!file.isDirectory()) {
						file.mkdirs();
						bgchange(path, newName, model, bgimage);
					}else {
						file.deleteOnExit();
						file.mkdirs();
						bgchange(path, newName, model, bgimage);
					}
					
					return "back/info";
				}
				
			}else {
				model.addAttribute("info", "图片类型不正确");
				return "back/info";
			}
			
		}else {
			model.addAttribute("info", "未添加背景图片");
			return "back/info";
		}
		
	}
	
	public String bgchange(String path,String newName,Model model,MultipartFile bgimage) {
		File result=new File(path+"\\"+newName);
		try {
			bgimage.transferTo(result);
			model.addAttribute("info", "修改成功，请重启浏览器去主页查看");
			return "back/info";
		} catch (IllegalStateException e) {
			model.addAttribute("info", "文件写入失败，请重试");
			return "back/info";     
		} catch (IOException e) {
			model.addAttribute("info", "未知错误，请重试");
			return "back/info";	        
		}
	}
}
  
    
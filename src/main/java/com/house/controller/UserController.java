package com.house.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.house.common.SystemConfig;
import com.house.entity.User;
import com.house.service.UserService;

/**
 * 
 * @ClassName: UserController
 * @Description: TODO
 * @author: 韩星星
 * @createTime: 2017年10月23日 下午12:04:12
 * @desc: 用户管理controller
 * @version: v1.0
 */
@Controller
@RequestMapping("/back/user")
public class UserController {
	private static final Logger logger = Logger.getLogger(HouseInfoController.class);

	@Autowired
	private UserService userService;

	/**
	 * 分页查询用户信息列表
	 * 
	 * @param
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String userList(Model model, @RequestParam(required = false) String username) {
		List<User> userList = userService.getUserList(username);
		model.addAttribute("list", userList);
		model.addAttribute("username", username);
		return "back/userList";
	}

	/**
	 * 根据ID获取用户信息
	 * 
	 * @param model
	 * @param userId
	 */
	@RequestMapping(value = "/toUpdate")
	public String getUserById(Model model, @RequestParam(value = "userId", required = true) Integer userId) {
		User user = userService.getUserById(userId);
		model.addAttribute("user", user);
		return "back/userEdit";
	}

	// 更新
	@RequestMapping("/update")
	public String updateUser(User user) {
		
		if(user!=null) {
			
			userService.updateUser(user);
		}
		

		return "redirect:list";
	}

	/**
	 * 跳转到用户添加页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addUser")
	public String addUser() {
		return "back/userAdd";
	}

	@RequestMapping(value = "/delete")
	public String deleteUser(@RequestParam(value = "userId", required = true) int userId) {
		userService.deleteUser(userId);
		return "redirect:list";
	}

	/**
	 * 保存用户信息
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/save")
	public String addUser(User user) {
		if (user != null) {
			user.setCreateTime(new Date());
			userService.addUser(user);
		}
		return "redirect:list";
	}

	/**
	 * 跳转到登录页面
	 * 
	 * @return
	 */
	@RequestMapping("/toLogin")
	public String toLogin() {
		return "common/login";
	}

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login")
	public String login(Model model, User user, HttpSession session) {
		if (user != null) {
			User u = userService.existUser(user);
			if (u != null) {
				session.setAttribute(SystemConfig.LOGIN_USER, u);
				return "redirect:/back/house/manage";
			}
		}
		model.addAttribute("msg", "用户名或密码有误!");
		return "common/login";
	}

}

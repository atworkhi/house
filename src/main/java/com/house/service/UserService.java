package com.house.service;

import java.util.List;

import com.house.entity.User;

/**
 * 
  * @ClassName: UserService
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 下午3:06:51  
  * @desc:  
  * @version: v1.0
 */
public interface UserService {

	/**
	 * 分页获取用户列表
	 * @param username 
	 * @param
	 * @param
	 * @return
	 */
	List<User> getUserList(String username);

	/**
	 * 根据ID删除用户
	 * @param userId
	 * 
	 */
	void deleteUser(int userId);
	
	/**
	 * 根据ID查询用户信息
	 * @param userId
	 * @return
	 */
	User getUserById(int userId);
	
	/**
	 * 批量删除用户信息
	 * @param list
	 * 
	 */
	void deleteUser(List<Integer> list);

	/**
	 * 添加用户
	 * @param user
	 */
	void addUser(User user);

	void updateUser(User user);
	
	/**
	 * 用户登录
	 * @param user
	 */
	User existUser(User user);
	
	
}

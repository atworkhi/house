package com.house.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.house.entity.User;

/**
 * 
  * @ClassName: UserDao
  * @Description: TODO
  * @author: 韩星星  
  * @createTime: 2017年10月23日 上午11:05:08  
  * @desc:  后台用户登陆
  * @version: v1.0
 */
@Repository
public interface UserDao {

	/**
	 * 分页获取用户列表
	 * @param username 
	 * @param offset
	 * @param limit 
	 * @return
	 */
	List<User> getUserList(@Param("username") String username);

	/**
	 * 根据ID删除用户
	 * @param userId
	 * @return
	 */
	void deleteUser(int userId);
	
	/**
	 * 根据ID查询用户信息
	 * @param userId
	 * @return
	 */
	User getUserById(int userId);

	/**
	 * 添加用户
	 * @param user
	 */
	void addUser(User user);

	void updateUser(User user);
	/**
	 * 查询登录用户
	 * @return
	 */
	List<User> getLoginUser(User user);

}

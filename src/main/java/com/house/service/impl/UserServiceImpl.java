package com.house.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.house.dao.UserDao;
import com.house.entity.User;
import com.house.service.UserService;

/**
 * 用户信息Service实现类
 *
 * @author zhangbo
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> getUserList(String username) {
        return userDao.getUserList(username);
    }

    @Override
    @Transactional
    public void deleteUser(int userId) {
        userDao.deleteUser(userId);
    }

    @Override
    public User getUserById(int userId) {
        return userDao.getUserById(userId);
    }

    @Override
    @Transactional
    public void deleteUser(List<Integer> list) {
        for (Integer userId : list) {
            this.deleteUser(userId);
        }
    }

    @Override
    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User existUser(User user) {
        if (user != null && user.getUserName() != null
                && user.getPassword() != null) {

            List<User> userList = userDao.getLoginUser(user);
            if (userList != null && userList.size() > 0) {
                return userList.get(0);
            }
        }
        return null;
    }

	/*  
     * @see com.UserService#updateUser(com.User)
	 */

    @Override
    @Transactional
    public void updateUser(User user) {
        if (user != null) {
            userDao.updateUser(user);
        }
    }

}

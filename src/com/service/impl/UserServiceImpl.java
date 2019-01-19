package com.service.impl;

import com.bean.User;
import com.dao.UserDao;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User canLogin(User user) {
        return userDao.queryUserWhileLogin(user);
    }

    @Override
    public boolean regist(User user) {
        user.setCreateTime(new Date());
        try {
            userDao.addUser(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkName(String uName) {
        User u=userDao.queryUserByName(uName);
        System.out.println(u);
        if(u==null){
            return false;
        }
        return true;
    }

    @Override
    public boolean updateUser(User user) {
        try {
            userDao.updateUser(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteUser(int uId) {
        try {
            userDao.deleteUser(uId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> queryUserByDeptId(int deptId) {

        return userDao.queryUserByDeptId(deptId);
    }

    @Override
    public List<User> queryUserByPstId(int pstId) {
        return userDao.queryUserByPstId(pstId);
    }

    @Override
    public User queryUserByuId(int uId) {
        return userDao.queryUserByuId(uId);
    }
}

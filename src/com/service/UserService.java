package com.service;

import com.bean.RecruitInfo;
import com.bean.User;

import java.util.List;

public interface UserService {
    public User canLogin(User user);
    public boolean regist(User user);
    public boolean checkName(String uName);

    public boolean updateUser(User user);


    public boolean deleteUser(int uId);


    public List<User> queryUserByDeptId(int deptId);


    public List<User> queryUserByPstId(int pstId);

    public User queryUserByuId(int uId);

}

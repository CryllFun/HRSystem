package com.dao;

import com.bean.User;

import java.util.List;

public interface UserDao {
    /**
     * 登录验证
     * @param user
     * @return
     */
    public User queryUserWhileLogin(User user);

    /**
     * 添加用户
     * @param user
     */
    public void addUser(User user);

    /**
     * 同名验证
     * @param uName
     * @return
     */
    public User queryUserByName(String uName);

    /**
     * 更新用户信息
     * @param user
     */
    public void updateUser(User user);

    /**
     * 删除用户
     * @param uId
     */
    public void deleteUser(int uId);

    /**
     * 通过部门id查询user
     * @param deptId
     * @return
     */
    public List<User> queryUserByDeptId(int deptId);

    /**
     * 通过职位id查user
     * @param deptId
     * @return
     */
    public List<User> queryUserByPstId(int deptId);

    /**
     * 通过id查用户
     * @param uId
     * @return
     */
    public User queryUserByuId(int uId);

}

package com.dao;

import com.bean.UserSalaryList;

import java.util.List;

public interface USLDao {
    public void addUSL(UserSalaryList usl);
    public List<UserSalaryList> queryAllUSL();
    public List<UserSalaryList> queryUSLByUserId(int userId);
    public void updateUSL(int uslId,String note);
}

package com.service;

import com.bean.UserSalaryList;

import java.util.List;

public interface USLservice {
    public boolean addUSL(UserSalaryList usl);
    public List<UserSalaryList> queryAllUSL();
    public List<UserSalaryList> queryUSLByUserId(Integer userId);
    public UserSalaryList endSal(Integer userId,String time1,String time2);
    public List<UserSalaryList> queryUserUSLByYear(Integer userId,String time);
    public UserSalaryList queryUserUSLByMonth(Integer userId,String time);
    public boolean updateUSL(int uslId,String note);

}

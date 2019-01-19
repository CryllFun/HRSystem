package com.service.impl;

import com.bean.DdMoney;
import com.bean.RewardPuni;
import com.bean.User;
import com.bean.UserSalaryList;
import com.dao.DdMoneyDao;
import com.dao.RewardPuniDao;
import com.dao.USLDao;
import com.dao.UserDao;
import com.service.USLservice;
import com.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Service
public class USLservicImpl implements USLservice {
    @Autowired
    private UserDao ud;
    @Autowired
    private USLDao usld;
    @Autowired
    private DdMoneyDao ddd;
    @Autowired
    private RewardPuniDao rpd;
    @Override
    public boolean addUSL(UserSalaryList usl) {
        try {
            usld.addUSL(usl);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<UserSalaryList> queryAllUSL() {
        return usld.queryAllUSL();
    }



    @Override
    public List<UserSalaryList> queryUSLByUserId(Integer userId) {
        return usld.queryUSLByUserId(userId);
    }

    @Override
    public UserSalaryList endSal(Integer userId, String time1, String time2) {
        Date date1= Utils.parseTime(time1);
        Date date2= Utils.parseTime(time2);
        List<RewardPuni> rps=rpd.queryRewardPuniByUserId(userId);
        DdMoney ddm=ddd.queryDdMoney();
        User user=ud.queryUserByuId(userId);
        double rpcost=0;
        for (RewardPuni rp :rps) {
            if(rp.getTime().getTime()>date1.getTime()&&rp.getTime().getTime()<date2.getTime()){
                rpcost+=rp.getMoney();
            }
        }
        double bs=user.getBasicSal();
        double so=ddm.getSoMoney();
        UserSalaryList usl=new UserSalaryList();
        usl.setBasicSal(bs);
        usl.setSocialCost(bs*so);
        usl.setBonus(0);
        usl.setOverPay(0);
        usl.setRpCost(rpcost);
        usl.setStarTime(date1);
        usl.setEndTime(date2);
        return usl;
    }

    @Override
    public List<UserSalaryList> queryUserUSLByYear(Integer userId, String time) {
        Date date=Utils.parseTime(time);
        List<UserSalaryList> usls=queryUSLByUserId(userId);
        List<UserSalaryList> usls1=new ArrayList<>();
        for (UserSalaryList usl : usls) {
            if(date.getYear()==usl.getYear()){
                usls1.add(usl);
            }
        }
        return usls1;
    }

    @Override
    public UserSalaryList queryUserUSLByMonth(Integer userId, String time) {
        List<UserSalaryList> usls=queryUserUSLByYear(userId,time);
        Date  date=Utils.parseTime(time);
        UserSalaryList usl=null;
        for (UserSalaryList u: usls) {
            if(date.getMonth()+1==u.getMonth()){
                usl=u;
                break;
            }
        }
        return usl;
    }

    @Override
    public boolean updateUSL(int uslId, String note) {
        try {
            usld.updateUSL(uslId,note);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


}

package com.bean;

import com.util.Utils;

import java.util.Date;

public class RewardPuni {
    private Integer repuId;
    private Integer userId;
    private String rewardPuni;
    private String reson;
    private Date time;
    private String stime;
    private double money;

    public RewardPuni() {
    }

    public Integer getRepuId() {
        return repuId;
    }

    public void setRepuId(Integer repuId) {
        this.repuId = repuId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }



    public String getReson() {
        return reson;
    }

    public void setReson(String reson) {
        this.reson = reson;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getRewardPuni() {
        return rewardPuni;
    }

    public void setRewardPuni(String rewardPuni) {
        this.rewardPuni = rewardPuni;
    }

    public String getStime() {
        return Utils.format2(time);
    }
}

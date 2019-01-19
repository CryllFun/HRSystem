package com.bean;

import java.io.Serializable;

public class DdMoney implements Serializable {
    private Integer dmId;
    private double lateMoney;
    private double leaveMoney;
    private double dayMoney;
    private double soMoney;

    public DdMoney() {
    }

    public Integer getDmId() {
        return dmId;
    }

    public void setDmId(Integer dmId) {
        this.dmId = dmId;
    }

    public double getLateMoney() {
        return lateMoney;
    }

    public void setLateMoney(double lateMoney) {
        this.lateMoney = lateMoney;
    }

    public double getLeaveMoney() {
        return leaveMoney;
    }

    public void setLeaveMoney(double leaveMoney) {
        this.leaveMoney = leaveMoney;
    }

    public double getDayMoney() {
        return dayMoney;
    }

    public void setDayMoney(double dayMoney) {
        this.dayMoney = dayMoney;
    }

    public double getSoMoney() {
        return soMoney;
    }

    public void setSoMoney(double soMoney) {
        this.soMoney = soMoney;
    }
}

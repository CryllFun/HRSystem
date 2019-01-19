package com.bean;

import java.io.Serializable;
import java.util.Date;

public class UserSalaryList implements Serializable {
    private Integer uslId;
    private Integer userId;
    private double basicSal;
    private double bonus;
    private double overPay;
    private double rpCost;
    private double socialCost;
    private double realSal;
    private Date starTime;
    private Date endTime;
    private int month;
    private int year;
    public String note;

    public UserSalaryList() {
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public double getBonus() {
        return bonus;
    }

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public Integer getUslId() {
        return uslId;
    }

    public void setUslId(Integer uslId) {
        this.uslId = uslId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public double getBasicSal() {
        return basicSal;
    }

    public void setBasicSal(double basicSal) {
        this.basicSal = basicSal;
    }



    public double getOverPay() {
        return overPay;
    }

    public void setOverPay(double overPay) {
        this.overPay = overPay;
    }

    public double getRpCost() {
        return rpCost;
    }

    public void setRpCost(double rpCost) {
        this.rpCost = rpCost;
    }

    public double getRealSal() {
        return (basicSal+bonus+overPay+rpCost+socialCost);
    }


    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getStarTime() {
        return starTime;
    }

    public void setStarTime(Date starTime) {
        this.starTime = starTime;
    }

    public double getSocialCost() {
        return socialCost;
    }

    public void setSocialCost(double socialCost) {
        this.socialCost = socialCost;
    }

    public int getMonth() {
        return endTime.getMonth()+1;
    }

    public int getYear() {
        return endTime.getYear();
    }


}

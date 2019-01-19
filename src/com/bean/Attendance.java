package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;

public class Attendance implements Serializable {
    private Integer attId;
    private Integer userId;
    private Date starTime;
    private String sstarTime;
    private Date endTime;
    private String sendTime;
    private String isLate;
    private String isLeave;
    private String isNowork;
    private String note;

    public Attendance() {
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

    public Integer getAttId() {
        return attId;
    }

    public void setAttId(Integer attId) {
        this.attId = attId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }


    public String getIsLate() {
        return isLate;
    }

    public void setIsLate(String isLate) {
        this.isLate = isLate;
    }

    public String getIsLeave() {
        return isLeave;
    }

    public void setIsLeave(String isLeave) {
        this.isLeave = isLeave;
    }

    public String getIsNowork() {
        return isNowork;
    }

    public void setIsNowork(String isNowork) {
        this.isNowork = isNowork;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getSendTime() {
        return Utils.format1(endTime);
    }

    public String getSstarTime() {
        return Utils.format1(starTime);
    }
}

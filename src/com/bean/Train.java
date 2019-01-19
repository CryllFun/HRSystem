package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Train implements Serializable {
    private Integer trId;
    private String trName;
    private String trContent;
    private Date starTime;
    private Date endTime;
    private String sendTime;
    private String sstarTime;
    private List<User> userList;
    private Date creTime;
    private Date updTime;

    public Train() {
    }

    public Integer getTrId() {
        return trId;
    }

    public void setTrId(Integer trId) {
        this.trId = trId;
    }

    public String getTrName() {
        return trName;
    }

    public void setTrName(String trName) {
        this.trName = trName;
    }

    public String getTrContent() {
        return trContent;
    }

    public void setTrContent(String trContent) {
        this.trContent = trContent;
    }

    public Date getStarTime() {
        return starTime;
    }

    public void setStarTime(Date starTime) {
        this.starTime = starTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public String getSendTime() {
        return Utils.format2(endTime);
    }

    public String getSstarTime() {
        return Utils.format2(starTime);
    }

    public Date getCreTime() {
        return creTime;
    }

    public void setCreTime(Date creTime) {
        this.creTime = creTime;
    }

    public Date getUpdTime() {
        return updTime;
    }

    public void setUpdTime(Date updTime) {
        this.updTime = updTime;
    }
}

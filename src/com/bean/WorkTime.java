package com.bean;

import com.mysql.fabric.xmlrpc.base.Data;

import java.io.Serializable;

public class WorkTime implements Serializable {
    private Integer workId;
    private String starTime;
    private String endTime;
    private Integer betwTime;

    public WorkTime() {
    }

    public Integer getWorkId() {
        return workId;
    }

    public void setWorkId(Integer workId) {
        this.workId = workId;
    }


    public Integer getBetwTime() {
        return betwTime;
    }

    public void setBetwTime(Integer betwTime) {
        this.betwTime = betwTime;
    }

    public String getStarTime() {
        return starTime;
    }

    public void setStarTime(String starTime) {
        this.starTime = starTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
}

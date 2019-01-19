package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Position implements Serializable {
    private Integer pstId;
    private String pstName;
    private String pstDesc;
    private Integer deptId;
    private Date cTime;
    private String scTime;
    private Date uTime;
    private String suTime;
    private List<User> users;

    public Position() {
    }
    public String getSuTime() {
        return Utils.format1(uTime);
    }

    public String getScTime() {
        return Utils.format1(cTime);
    }
    public Integer getPstId() {
        return pstId;
    }

    public void setPstId(Integer pstId) {
        this.pstId = pstId;
    }

    public String getPstName() {
        return pstName;
    }

    public void setPstName(String pstName) {
        this.pstName = pstName;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Date getcTime() {
        return cTime;
    }

    public void setcTime(Date cTime) {
        this.cTime = cTime;
    }

    public Date getuTime() {
        return uTime;
    }

    public void setuTime(Date uTime) {
        this.uTime = uTime;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public String getPstDesc() {
        return pstDesc;
    }

    public void setPstDesc(String pstDesc) {
        this.pstDesc = pstDesc;
    }
}

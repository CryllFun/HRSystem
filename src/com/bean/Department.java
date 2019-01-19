package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Department implements Serializable {
    private Integer deptId;
    private String deptName;
    private Integer comId;
    private List<Position> positions;
    private Date cTime;
    private String scTime;
    private Date uTime;
    private String suTime;
    private String deptDesc;
    private List<User> users;

    public Department() {
    }
    public String getSuTime() {
        return Utils.format1(uTime);
    }

    public String getScTime() {
        return Utils.format1(cTime);
    }
    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
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

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public List<Position> getPositions() {
        return positions;
    }

    public void setPositions(List<Position> positions) {
        this.positions = positions;
    }

    public String getDeptDesc() {
        return deptDesc;
    }

    public void setDeptDesc(String deptDesc) {
        this.deptDesc = deptDesc;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}

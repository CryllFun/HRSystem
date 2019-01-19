package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class RecruitInfo implements Serializable {
    private Integer infoId;
    private Integer deptId;
    private Integer pstId;
    private Integer comId;
    private String comName;
    private String comMsg;
    private String deptName;
    private String pstName;
    private String functions;
    private String requests;
    private String salary;
    private Date uTime;
    private String suTime;
    private Date cTime;
    private String scTime;

    public RecruitInfo() {
    }

    @Override
    public String toString() {
        return "RecruitInfo{" +
                "infoId=" + infoId +
                ", deptId=" + deptId +
                ", pstId=" + pstId +
                ", comId=" + comId +
                ", comName='" + comName + '\'' +
                ", comMsg='" + comMsg + '\'' +
                ", deptName='" + deptName + '\'' +
                ", pstName='" + pstName + '\'' +
                ", functions='" + functions + '\'' +
                ", requests='" + requests + '\'' +
                ", salary='" + salary + '\'' +
                ", uTime=" + uTime +
                ", cTime=" + cTime +
                '}';
    }

    public Integer getInfoId() {
        return infoId;
    }

    public void setInfoId(Integer infoId) {
        this.infoId = infoId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getPstId() {
        return pstId;
    }

    public void setPstId(Integer pstId) {
        this.pstId = pstId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getPstName() {
        return pstName;
    }

    public void setPstName(String pstName) {
        this.pstName = pstName;
    }



    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public Date getuTime() {
        return uTime;
    }

    public void setuTime(Date uTime) {
        this.uTime = uTime;
    }

    public Date getcTime() {
        return cTime;
    }

    public void setcTime(Date cTime) {
        this.cTime = cTime;
    }



    public String getComMsg() {
        return comMsg;
    }

    public void setComMsg(String comMsg) {
        this.comMsg = comMsg;
    }

    public String getFunctions() {
        return functions;
    }

    public void setFunctions(String functions) {
        this.functions = functions;
    }

    public String getRequests() {
        return requests;
    }

    public void setRequests(String requests) {
        this.requests = requests;
    }

    public String getSuTime() {
        return Utils.format1(uTime);
    }

    public String getScTime() {
        return Utils.format1(cTime);
    }
}

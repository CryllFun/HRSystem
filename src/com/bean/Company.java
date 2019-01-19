package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Company implements Serializable {
    private Integer comId;
    private String comName;
    private String comMsg;
    private String legalPerson;
    private String address;
    private String phone;
    private String email;
    private Date uTime;
    private String suTime;
    private Date cTime;
    private String scTime;
    private List<Department> depts;

    public Company() {
    }
    public String getSuTime() {
        return Utils.format1(uTime);
    }

    public String getScTime() {
        return Utils.format1(cTime);
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

    public String getComMsg() {
        return comMsg;
    }

    public void setComMsg(String comMsg) {
        this.comMsg = comMsg;
    }

    public String getLegalPerson() {
        return legalPerson;
    }

    public void setLegalPerson(String legalPerson) {
        this.legalPerson = legalPerson;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public List<Department> getDepts() {
        return depts;
    }

    public void setDepts(List<Department> depts) {
        this.depts = depts;
    }
}

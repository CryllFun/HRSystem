package com.bean;

import com.util.Utils;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private Integer userId;
    private Integer identity;
    private Integer deptId;
    private Integer pstId;
    private String pstName;
    private String deptName;
    private Integer age;
    private String sex;
    private String record;
    private double basicSal;
    private String school;
    private String major;
    private String name;
    private String psw;
    private String phone;
    private String email;
    private Date birth;
    private String sbirth;
    private Date edutTime;
    private String sedutTime;
    private String nativePlace;
    private String poliStatus;
    private Date inTime;
    private String sinTime;
    private Date createTime;
    private Date updateTime;
    private String screatTime;
    private String supdateTime;
    private String status;
    private String note;

    public User() {
    }

    public User(Integer userId, Integer identity, Integer deptId, Integer pstId, String pstName, String deptName, Integer age, String sex, String record, String school, String major, String name, String psw, String phone, String email, Date edutTime, Date inTime, Date createTime, Date updateTime) {
        this.userId = userId;
        this.identity = identity;
        this.deptId = deptId;
        this.pstId = pstId;
        this.pstName = pstName;
        this.deptName = deptName;
        this.age = age;
        this.sex = sex;
        this.record = record;
        this.school = school;
        this.major = major;
        this.name = name;
        this.psw = psw;
        this.phone = phone;
        this.email = email;
        this.edutTime = edutTime;
        this.inTime = inTime;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public String getPstName() {
        return pstName;
    }

    public void setPstName(String pstName) {
        this.pstName = pstName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Date getEdutTime() {
        return edutTime;
    }

    public void setEdutTime(Date edutTime) {
        this.edutTime = edutTime;
    }

    public Date getInTime() {
        return inTime;
    }

    public void setInTime(Date inTime) {
        this.inTime = inTime;
    }






    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getIdentity() {
        return identity;
    }

    public void setIdentity(Integer identity) {
        this.identity = identity;
    }

    public Integer getPstId() {
        return pstId;
    }

    public void setPstId(Integer pstId) {
        this.pstId = pstId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getScreatTime() {

            return Utils.format1(createTime);
    }

    public String getSupdateTime() {
        return Utils.format1(updateTime);
    }

    public String getSedutTime() {
        return Utils.format2(edutTime);
    }

    public String getSinTime() {
        return Utils.format2(inTime);
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getSbirth() {
        return Utils.format2(birth);
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public String getPoliStatus() {
        return poliStatus;
    }

    public void setPoliStatus(String poliStatus) {
        this.poliStatus = poliStatus;
    }

    public double getBasicSal() {
        return basicSal;
    }

    public void setBasicSal(double basicSal) {
        this.basicSal = basicSal;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}

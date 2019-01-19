package com.bean;

import com.util.Utils;

import javax.swing.tree.DefaultTreeCellEditor;
import java.io.Serializable;
import java.util.Date;

public class Resume implements Serializable {
    private Integer resId;
    private String resName;
    private Integer userId;
    private Integer infoId;
    private Integer pstId;
    private String pstName;
    private Integer deptId;
    private String deptName;
    private String name;
    private String sex;
    private Integer age;
    private Date birth;
    private String sbirth;
    private String phone;
    private String email;
    private String school;
    private String record;
    private String workExp;
    private String nativePlace;
    private String poliStatus;
    private String hobbies;
    private String wantPst;
    private String ability;
    private String selfAsst;
    private Double wantSal;
    private String major;
    private Integer looked;
    private Integer invited;
    private Integer submit;
    private Integer accpet;
    private Date cTime;
    private String scTime;
    private Date uTime;
    private String suTime;
    private Date graduDate;
    private String sgraduDate;
    private Date accpetTime;
    private String saccpetTime;
    private Date subTime;
    private String ssubTime;
    private Date invtTime;
    private String sinvtTime;
    private Date lookedTime;
    private String slookedTime;
    private Date itviewTime;

    public String getScTime() {
        return Utils.format1(cTime);
    }

    public String getSuTime() {
        return Utils.format1(uTime);
    }

    public String getSgraduDate() {
        return Utils.format2(graduDate);
    }

    public String getSaccpetTime() {
        return Utils.format1(accpetTime);
    }

    public String getSsubTime() {
        return Utils.format1(subTime);
    }

    public String getSinvtTime() {
        return Utils.format1(invtTime);
    }

    public String getSlookedTime() {
        return Utils.format1(lookedTime);
    }

    public Resume() {
    }

    public Integer getResId() {
        return resId;
    }

    public void setResId(Integer resId) {
        this.resId = resId;
    }

    public String getResName() {
        return resName;
    }

    public void setResName(String resName) {
        this.resName = resName;
    }



    public Integer getInfoId() {
        return infoId;
    }

    public void setInfoId(Integer infoId) {
        this.infoId = infoId;
    }

    public Integer getPstId() {
        return pstId;
    }

    public void setPstId(Integer pstId) {
        this.pstId = pstId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
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

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record;
    }

    public String getWorkExp() {
        return workExp;
    }

    public void setWorkExp(String workExp) {
        this.workExp = workExp;
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

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getWantPst() {
        return wantPst;
    }

    public void setWantPst(String wantPst) {
        this.wantPst = wantPst;
    }

    public String getAbility() {
        return ability;
    }

    public void setAbility(String ability) {
        this.ability = ability;
    }

    public String getSelfAsst() {
        return selfAsst;
    }

    public void setSelfAsst(String selfAsst) {
        this.selfAsst = selfAsst;
    }

    public Double getWantSal() {
        return wantSal;
    }

    public void setWantSal(Double wantSal) {
        this.wantSal = wantSal;
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

    public Date getGraduDate() {
        return graduDate;
    }

    public void setGraduDate(Date graduDate) {
        this.graduDate = graduDate;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "resId=" + resId +
                ", resName='" + resName + '\'' +
                ", uId=" + userId +
                ", infoId=" + infoId +
                ", pstId=" + pstId +

                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", birth=" + birth +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", school='" + school + '\'' +
                ", record='" + record + '\'' +
                ", workExp='" + workExp + '\'' +
                ", nativePlace='" + nativePlace + '\'' +
                ", poliStatus='" + poliStatus + '\'' +
                ", hobbies='" + hobbies + '\'' +
                ", wantPst='" + wantPst + '\'' +
                ", ability='" + ability + '\'' +
                ", selfAsst='" + selfAsst + '\'' +
                ", wantSal=" + wantSal +
                ", cTime=" + cTime +
                ", uTime=" + uTime +
                ", graduDate=" + graduDate +
                ", major='" + major + '\'' +
                '}';
    }



    public Date getSubTime() {
        return subTime;
    }

    public void setSubTime(Date subTime) {
        this.subTime = subTime;
    }

    public Date getInvtTime() {
        return invtTime;
    }

    public void setInvtTime(Date invtTime) {
        this.invtTime = invtTime;
    }

    public Date getLookedTime() {
        return lookedTime;
    }

    public void setLookedTime(Date lookedTime) {
        this.lookedTime = lookedTime;
    }


    public Date getAccpetTime() {
        return accpetTime;
    }

    public void setAccpetTime(Date accpetTime) {
        this.accpetTime = accpetTime;
    }

    public Integer getLooked() {
        return looked;
    }

    public void setLooked(Integer looked) {
        this.looked = looked;
    }

    public Integer getInvited() {
        return invited;
    }

    public void setInvited(Integer invited) {
        this.invited = invited;
    }

    public Integer getSubmit() {
        return submit;
    }

    public void setSubmit(Integer submit) {
        this.submit = submit;
    }

    public Integer getAccpet() {
        return accpet;
    }

    public void setAccpet(Integer accpet) {
        this.accpet = accpet;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getSbirth() {
        return Utils.format2(birth);
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

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Date getItviewTime() {
        return itviewTime;
    }

    public void setItviewTime(Date itviewTime) {
        this.itviewTime = itviewTime;
    }
}

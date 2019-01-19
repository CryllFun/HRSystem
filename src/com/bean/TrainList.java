package com.bean;

import java.io.Serializable;

public class TrainList  implements Serializable {
    private Integer trlId;
    private Integer trId;
    private Integer deptId;
    private Integer userId;

    public TrainList() {
    }

    public Integer getTrlId() {
        return trlId;
    }

    public void setTrlId(Integer trlId) {
        this.trlId = trlId;
    }

    public Integer getTrId() {
        return trId;
    }

    public void setTrId(Integer trId) {
        this.trId = trId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }


}

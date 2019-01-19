package com.dao;

import com.bean.Attendance;

import java.util.List;

public interface AttendanceDao {
    public void addAttd(Attendance attd);
    public void updateAttd(Attendance attd);
    public Attendance queryAttById(int attId);
    public List<Attendance> queryAllAtt();
    public List<Attendance> queryAllAttByUserId(int userId);

}

package com.service;

import com.bean.Attendance;

import java.util.Date;
import java.util.List;

public interface AttService {
    public boolean addAtt(Attendance attd);
    public boolean updateAtt(Attendance attd);
    public Attendance queryAttById(Integer attId);
    public List<Attendance> queryAllAtt();
    public List<Attendance> queryAllAttByUserId(Integer userId);
    public List<Attendance> queryAllAttByMonth(int userId,Date date);
    public Attendance queryAllAttByDay(int userId, Date date);

}

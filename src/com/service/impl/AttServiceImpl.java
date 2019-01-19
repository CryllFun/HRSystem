package com.service.impl;

import com.bean.Attendance;
import com.dao.AttendanceDao;
import com.service.AttService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class AttServiceImpl implements AttService {
    @Autowired
    private AttendanceDao att;

    @Override
    public boolean addAtt(Attendance attd) {
        try {
            att.addAttd(attd);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateAtt(Attendance attd) {
        try {
            att.updateAttd(attd);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Attendance queryAttById(Integer attId) {
        return att.queryAttById(attId);
    }

    @Override
    public List<Attendance> queryAllAtt() {
        return att.queryAllAtt();
    }

    @Override
    public List<Attendance> queryAllAttByUserId(Integer userId) {
        return att.queryAllAttByUserId(userId);
    }

    @Override
    public List<Attendance> queryAllAttByMonth(int userId, Date date) {
        List<Attendance> atts1=queryAllAttByUserId(userId);
        List<Attendance> atts2=new ArrayList<>();
        for (Attendance att:atts1) {
            if (att.getStarTime().getYear()==date.getYear()&&att.getStarTime().getMonth()==date.getMonth()){
                atts2.add(att);
            }
        }
        return atts2;
    }

    @Override
    public Attendance queryAllAttByDay(int userId, Date date) {
        List<Attendance> atts=queryAllAttByMonth(userId,date);
        Attendance attd=null;
        for (Attendance att :atts) {
            if (att.getStarTime().getDay()==date.getDay()){
                attd=att;
            }
        }
        return attd;
    }
}

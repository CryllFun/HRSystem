package com.service.impl;

import com.bean.RecruitInfo;
import com.dao.RecruitInfoDao;
import com.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InfoServiceImpl implements InfoService {
    @Autowired
    private RecruitInfoDao rd;
    @Override
    public List<RecruitInfo> queryAllInfo() {
        return rd.queryAllInfo();
    }

    @Override
    public boolean updateInfo(RecruitInfo info) {
        try {
            rd.updateRecruitinfo(info);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public RecruitInfo queryInfoById(Integer id) {
        return rd.queryInfoById(id);
    }

    @Override
    public boolean deleteInfo(Integer id) {
        try {
            rd.deleteInfo(id);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addInfo(RecruitInfo info) {
        try {
            rd.addInfo(info);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

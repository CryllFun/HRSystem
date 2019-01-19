package com.service.impl;

import com.bean.TrainList;
import com.dao.TrainDao;
import com.dao.TrainListDao;
import com.service.TrainListService;
import com.service.TrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TrainListServiceImpl implements TrainListService {
    @Autowired
    private TrainListDao tld;
    @Override
    public List<TrainList> queryTrainliByTrId(Integer trId) {
        return tld.queryTrainliByTrId(trId);
    }

    @Override
    public boolean deleteTrainListById(int trlId) {
        return false;
    }

    @Override
    public boolean addTrainList(int trId, int deptId, int userId) {
        try {
            tld.addTrainList(trId,deptId,userId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteTrainOfUser(int userId) {
        return false;
    }

    @Override
    public boolean deleteTrainsOfDept(int deptId) {
        return false;
    }

    @Override
    public boolean deleteTrainOfDept(int dept, int trId) {
        return false;
    }

    @Override
    public boolean updateTrainList(TrainList trList) {
        return false;
    }

    @Override
    public boolean queryTrainById(int trlId) {
        return false;
    }

    @Override
    public List<TrainList> queryAllTrainLi() {
        return tld.queryAllTrainLi();
    }

    @Override
    public boolean deleteOneTrainOfUser(int userId, int trId) {
        try {
            tld.deleteOneTrainOfUser(userId,trId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

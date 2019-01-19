package com.service.impl;

import com.bean.Train;
import com.dao.TrainDao;
import com.service.TrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TrainServiceImpl implements TrainService {
    @Autowired
    private TrainDao td;
    @Override
    public List<Train> queryAllTrain() {
        return td.queryAllTrain();
    }

    @Override
    public Train queryTrainById(int id) {
        return td.queryTrainById(id);
    }

    @Override
    public boolean addTrain(Train train) {
        try {
            td.addTrain(train);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteTrain(int id) {
        try {
            td.deleteTrain(id);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateTrain(Train train) {
        try {
            td.updateTrain(train);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

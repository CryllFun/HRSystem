package com.service;

import com.bean.Train;

import java.util.List;

public interface TrainService {
    public List<Train> queryAllTrain();

    public Train queryTrainById(int id);
    public boolean addTrain(Train train);
    public boolean deleteTrain(int id);
    public boolean updateTrain(Train train);
}

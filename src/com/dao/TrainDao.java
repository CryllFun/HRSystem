package com.dao;

import com.bean.Train;

import java.util.List;

public interface TrainDao {

    public List<Train> queryAllTrain();

    public Train queryTrainById(int id);
    public void addTrain(Train train);
    public void deleteTrain(int id);
    public void updateTrain(Train train);

}

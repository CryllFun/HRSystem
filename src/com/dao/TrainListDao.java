package com.dao;

import com.bean.TrainList;

import java.util.List;

public interface TrainListDao {
    public void deleteTrainListById(int trlId);
    public void addTrainList(int trId,int deptId,int userId);

    /**删除某个人所有的培训
     *
     * @param userId
     * @return
     */
    public void deleteTrainOfUser(int userId);

    /**删除某个部门的所有培训
     *
     * @param deptId
     * @return
     */
    public void deleteTrainsOfDept(int deptId);

    /**删除某个部门的某个培训
     *
     * @param dept
     * @param trId
     * @return
     */
    public void deleteTrainOfDept(int dept,int trId);

    /**修改某条培训
     *
     * @param trList
     * @return
     */
    public void updateTrainList(TrainList trList);

    /**查询单个培训
     *
     * @param trlId
     * @return
     */
    public void queryTrainById(int trlId);

    /**查询所有培训
     *
     * @return
     */
    public List<TrainList> queryAllTrainLi();
    public List<TrainList> queryTrainliByTrId(int trId);
    public void deleteOneTrainOfUser(int userId,int trId);
}

package com.service;

import com.bean.TrainList;

import java.util.List;

public interface TrainListService {
    public List<TrainList> queryTrainliByTrId(Integer trId);
    public boolean deleteTrainListById(int trlId);
    public boolean addTrainList(int trId,int deptId,int userId);

    /**删除某个人所有的培训
     *
     * @param userId
     * @return
     */
    public boolean deleteTrainOfUser(int userId);

    /**删除某个部门的所有培训
     *
     * @param deptId
     * @return
     */
    public boolean deleteTrainsOfDept(int deptId);

    /**删除某个部门的某个培训
     *
     * @param dept
     * @param trId
     * @return
     */
    public boolean deleteTrainOfDept(int dept,int trId);

    /**修改某条培训
     *
     * @param trList
     * @return
     */
    public boolean updateTrainList(TrainList trList);

    /**查询单个培训
     *
     * @param trlId
     * @return
     */
    public boolean queryTrainById(int trlId);

    /**查询所有培训
     *
     * @return
     */
    public List<TrainList> queryAllTrainLi();
    public boolean deleteOneTrainOfUser(int userId,int trId);

}

package com.dao;

import com.bean.RecruitInfo;

import java.util.List;

public interface RecruitInfoDao {
    /**
     * 查看所有招聘信息
     * @return
     */
    public List<RecruitInfo> queryAllInfo();

    /**
     * 通过id查招聘信息
     * @param id
     * @return
     */
    public RecruitInfo queryInfoById(int id);

    /**
     * 添加招聘
     * @param info
     */
    public void addInfo(RecruitInfo info);

    /**
     * 删除招聘
     * @param infoId
     */
    public void deleteInfo(int infoId);

    /**
     * 修改招聘信息
     * @param info
     */
    public void updateRecruitinfo(RecruitInfo info);
}

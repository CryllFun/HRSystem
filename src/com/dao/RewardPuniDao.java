package com.dao;

import com.bean.RewardPuni;

import java.util.List;

public interface RewardPuniDao {
    public void addRewardPuni(RewardPuni rp);
    public void updateRewardPuni(RewardPuni rp);
    public List<RewardPuni> queryAllRewardPuni();
    public RewardPuni queryRewardPuniById(int id);
    public List<RewardPuni> queryRewardPuniByUserId(int userId);
    public boolean deleteRePu(int repuId);

}

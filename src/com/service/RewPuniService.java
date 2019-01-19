package com.service;

import com.bean.RewardPuni;

import java.util.List;

public interface RewPuniService {
    public boolean addRewardPuni(RewardPuni rp);
    public boolean updateRewardPuni(RewardPuni rp);
    public List<RewardPuni> queryAllRewardPuni();
    public RewardPuni queryRewardPuniById(Integer id);
    public List<RewardPuni> queryRewardPuniByUserId(Integer userId);
    public boolean deleteRePu(Integer repuId);
}

package com.service.impl;

import com.bean.RewardPuni;
import com.dao.RewardPuniDao;
import com.service.RewPuniService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RewPuniServiceImpl implements RewPuniService {
    @Autowired
    private RewardPuniDao rpd;
    @Override
    public boolean addRewardPuni(RewardPuni rp) {
        try {
            rpd.addRewardPuni(rp);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateRewardPuni(RewardPuni rp) {
        try {
            rpd.updateRewardPuni(rp);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<RewardPuni> queryAllRewardPuni() {
        return rpd.queryAllRewardPuni();
    }

    @Override
    public RewardPuni queryRewardPuniById(Integer id) {
        return rpd.queryRewardPuniById(id);
    }

    @Override
    public List<RewardPuni> queryRewardPuniByUserId(Integer userId) {
        return rpd.queryRewardPuniByUserId(userId);
    }

    @Override
    public boolean deleteRePu(Integer repuId) {
        return rpd.deleteRePu(repuId);
    }
}

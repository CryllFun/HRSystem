package com.service;

import com.bean.RecruitInfo;
import org.springframework.stereotype.Service;

import java.util.List;


public interface InfoService {
    public List<RecruitInfo> queryAllInfo();
    public boolean updateInfo(RecruitInfo info);
    public RecruitInfo queryInfoById(Integer id);
    public boolean deleteInfo(Integer id);
    public boolean addInfo(RecruitInfo info);
}

package com.service.impl;

import com.bean.DdMoney;
import com.dao.DdMoneyDao;
import com.service.DdMoneyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DdMoneyServiceImpl implements DdMoneyService {
    @Autowired
    private DdMoneyDao dmd;
    @Override
    public boolean updateDdMoney(DdMoney ddMoney) {
        try {
            dmd.updateDdMoney(ddMoney);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public DdMoney queryDdMoney() {
        return dmd.queryDdMoney();
    }
}

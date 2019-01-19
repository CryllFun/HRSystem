package com.service.impl;

import com.bean.Position;
import com.dao.PositionDao;
import com.service.PstService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PstServiceImpl implements PstService {
    @Autowired
    private PositionDao pd;
    @Override
    public List<Position> queryPstsBydeptId(Integer deptId) {
        return pd.queryAllPstByDeptId(deptId);
    }

    @Override
    public boolean updatePst(Position pst) {
        try {
            pd.updatePst(pst);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addPst(Position pst) {
        try {
            pd.addPosition(pst);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deletePst(Integer pstId) {
        try {
            pd.deletePst(pstId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

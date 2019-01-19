package com.service;

import com.bean.Position;

import java.util.List;

public interface PstService {
    public List<Position> queryPstsBydeptId(Integer deptId);
    public boolean updatePst(Position pst);
    public boolean addPst(Position pst);
    public boolean deletePst(Integer pstId);
}

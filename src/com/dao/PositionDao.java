package com.dao;

import com.bean.Position;

import java.util.List;

public interface PositionDao {
    /**
     * 增加职位
     * @param pst
     */
    public void addPosition(Position pst);

    /**
     * 删除职位
     * @param pstId
     */
    public void deletePst(int pstId);

    /**
     * 更新职位
     * @param pst
     */
    public void updatePst(Position pst);

    /**
     * 查看某部门所有职位
     * @param deptId
     * @return
     */
    public List<Position> queryAllPstByDeptId(int deptId);
}

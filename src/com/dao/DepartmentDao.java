package com.dao;

import com.bean.Department;

import java.util.List;

public interface DepartmentDao {
    /**
     * 增加部门
     * @param dept
     */
    public void addDept(Department dept);

    /**
     * 删除部门
     * @param deptId
     */
    public void deleteDept(int deptId);

    /**
     * 修改部门
     * @param department
     */
    public void updateDept(Department department);

    /**
     * 查看所有的部门
     * @return
     */
    public List<Department> queryAllDepts();

}

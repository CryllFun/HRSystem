package com.service.impl;

import com.bean.Company;
import com.bean.Department;
import com.dao.CompanyDao;
import com.dao.DepartmentDao;
import com.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ComSeviceImpl implements CompanyService {
    @Autowired
    private CompanyDao cd;
    @Autowired
    private DepartmentDao dd;
    @Override
    public Company queryCompany() {
        return cd.queryCompany().get(0);
    }

    @Override
    public boolean updateDept(Department dept) {
        try {
            dd.updateDept(dept);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addDept(Department dept) {
        try {
            dd.addDept(dept);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteDept(Integer id) {
        try {
            dd.deleteDept(id);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

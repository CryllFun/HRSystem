package com.service;

import com.bean.Company;
import com.bean.Department;

import java.util.List;

public interface CompanyService {
    public Company queryCompany();
    public boolean updateDept(Department dept);
    public boolean addDept(Department dept);
    public boolean deleteDept(Integer id);
}

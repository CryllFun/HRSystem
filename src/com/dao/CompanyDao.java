package com.dao;

import com.bean.Company;

import java.util.List;

public interface CompanyDao {
    /**
     * 查看所有的公司
     * @return
     */
    public List<Company> queryCompany();

    public List<Company> queryCompanyById(int id);
}

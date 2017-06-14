package com.fh.finance.service;

import java.util.List;

import com.fh.po.StaffSalary;

/**
 * 员工薪水发放
 * 
 * @author 风华项目组
 * 
 */
public interface StaffSalaryService
{
    
    /**
     * 添加
     * 
     * @param info
     * @return
     */
    public boolean add(StaffSalary info);
    
    /**
     * 修改
     * 
     * @param info
     * @return
     */
    public boolean update(StaffSalary info);
    
    /**
     * 根据条件查询薪水发放信息
     * 
     * @param info
     * @return
     */
    public List<StaffSalary> getList(StaffSalary info);
}

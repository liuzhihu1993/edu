package com.fh.finance.service;

import java.util.List;

import com.fh.po.StudentPayment;

/**
 * 学员缴费的业务逻辑
 * 
 * @author 风华项目组
 * 
 */
public interface StudentPaymentService
{
    
    /**
     * 添加缴费信息
     * 
     * @param info
     * @return
     */
    public boolean add(StudentPayment info);
    
    /**
     * 查询缴费信息
     * 
     * @param info
     * @return
     */
    public List<StudentPayment> getList(StudentPayment info);
    
    /**
     * 删除缴费信息
     * 
     * @param paymentId
     * @return
     */
    public boolean delete(Integer paymentId);
}

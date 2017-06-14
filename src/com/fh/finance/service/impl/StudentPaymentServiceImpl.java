package com.fh.finance.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.finance.mapper.StudentPaymentMapper;
import com.fh.finance.service.StudentPaymentService;
import com.fh.po.StudentPayment;

@Service
public class StudentPaymentServiceImpl implements StudentPaymentService
{
    
    @Resource(name = "studentPaymentMapper")
    private StudentPaymentMapper studentPaymentMapper;
    
    @Override
    public boolean add(StudentPayment info)
    {
        
        try
        {
            
            int i = studentPaymentMapper.insertSelective(info);
            if (i > 0)
            {
                return true;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return false;
    }
    
    @Override
    public List<StudentPayment> getList(StudentPayment info)
    {
        // TODO Auto-generated method stub
        return studentPaymentMapper.getStudentPaymentList(info);
    }
    
    @Override
    public boolean delete(Integer paymentId)
    {
        
        try
        {
            
            int i = studentPaymentMapper.deleteByPrimaryKey(paymentId);
            if (i > 0)
            {
                return true;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return false;
    }
    
}

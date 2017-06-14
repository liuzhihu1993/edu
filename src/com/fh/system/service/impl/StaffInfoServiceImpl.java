package com.fh.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.po.StaffInfo;
import com.fh.system.mapper.StaffInfoMapper;
import com.fh.system.service.StaffInfoService;

@Service
public class StaffInfoServiceImpl implements StaffInfoService
{
    
    @Resource(name = "staffInfoMapper")
    private StaffInfoMapper staffInfoMapper;
    
    @Override
    public boolean addStaff(StaffInfo staff)
    {
        
        try
        {
            int i = staffInfoMapper.insertSelective(staff);
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
    public List<StaffInfo> getList(StaffInfo staff)
    {
        
        return staffInfoMapper.getStaffInfoList(staff);
    }
    
    @Override
    public StaffInfo getStaffInfo(Integer staffId)
    {
        
        return staffInfoMapper.selectByPrimaryKey(staffId);
    }
    
    @Override
    public boolean updateStaff(StaffInfo staff)
    {
        try
        {
            int i = staffInfoMapper.updateByPrimaryKeySelective(staff);
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
    public List<StaffInfo> getStaffList(StaffInfo staff)
    {
        
        return staffInfoMapper.getStaffList(staff);
    }
    
}

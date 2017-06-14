package com.fh.system.mapper;

import java.util.List;

import com.fh.po.RoleInfo;

public interface RoleInfoMapper
{
    int deleteByPrimaryKey(Integer roleId);
    
    int insert(RoleInfo record);
    
    int insertSelective(RoleInfo record);
    
    RoleInfo selectByPrimaryKey(Integer roleId);
    
    int updateByPrimaryKeySelective(RoleInfo record);
    
    int updateByPrimaryKey(RoleInfo record);
    
    public List<RoleInfo> getRoleInfoList(RoleInfo record);
    
}
package com.fh.system.mapper;

import java.util.List;

import com.fh.po.AnthortyInfo;

public interface AnthortyInfoMapper
{
    int deleteByPrimaryKey(Integer anthortyId);
    
    int insert(AnthortyInfo record);
    
    int insertSelective(AnthortyInfo record);
    
    AnthortyInfo selectByPrimaryKey(Integer anthortyId);
    
    int updateByPrimaryKeySelective(AnthortyInfo record);
    
    int updateByPrimaryKey(AnthortyInfo record);
    
    public List<AnthortyInfo> getAnthortyInfoList(AnthortyInfo record);
    
    public List<AnthortyInfo> getAnthortyByRoleIdList(Integer roleId);
}
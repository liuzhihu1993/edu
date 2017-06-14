package com.fh.classinfo.mapper;

import java.util.List;

import com.fh.po.ClassroomInfo;

public interface ClassroomInfoMapper
{
    int deleteByPrimaryKey(Integer classroomId);
    
    int insert(ClassroomInfo record);
    
    int insertSelective(ClassroomInfo record);
    
    ClassroomInfo selectByPrimaryKey(Integer classroomId);
    
    int updateByPrimaryKeySelective(ClassroomInfo record);
    
    int updateByPrimaryKey(ClassroomInfo record);
    
    public List<ClassroomInfo> getClassroomList(ClassroomInfo info);
}
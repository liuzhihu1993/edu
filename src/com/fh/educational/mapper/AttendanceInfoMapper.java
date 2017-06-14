package com.fh.educational.mapper;

import java.util.List;

import com.fh.po.AttendanceInfo;

public interface AttendanceInfoMapper
{
    int deleteByPrimaryKey(Integer attendanceId);
    
    int insert(AttendanceInfo record);
    
    int insertSelective(AttendanceInfo record);
    
    AttendanceInfo selectByPrimaryKey(Integer attendanceId);
    
    int updateByPrimaryKeySelective(AttendanceInfo record);
    
    int updateByPrimaryKey(AttendanceInfo record);
    
    public List<AttendanceInfo> getAttendanceInfoList(AttendanceInfo info);
}
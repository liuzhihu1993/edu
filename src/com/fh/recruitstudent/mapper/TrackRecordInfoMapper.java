package com.fh.recruitstudent.mapper;

import java.util.List;

import com.fh.po.TrackRecordInfo;

public interface TrackRecordInfoMapper
{
    int deleteByPrimaryKey(Integer trackRecordId);
    
    int insert(TrackRecordInfo record);
    
    int insertSelective(TrackRecordInfo record);
    
    TrackRecordInfo selectByPrimaryKey(Integer trackRecordId);
    
    int updateByPrimaryKeySelective(TrackRecordInfo record);
    
    int updateByPrimaryKey(TrackRecordInfo record);
    
    public List<TrackRecordInfo> getTrackRecordList(TrackRecordInfo record);
}
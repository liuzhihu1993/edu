package com.fh.educational.service;

import java.util.List;

import com.fh.po.AttendanceInfo;

/**
 * 学员考勤管理业务逻辑
 * 
 * @author 风华项目组
 * 
 */
public interface AttendanceInfoService
{
    
    /**
     * 添加
     * 
     * @param info
     * @return
     */
    public boolean add(AttendanceInfo info);
    
    /**
     * 修改
     * 
     * @param info
     * @return
     */
    public boolean update(AttendanceInfo info);
    
    /**
     * 删除
     * 
     * @param info
     * @return
     */
    public boolean delete(Integer attendanceId);
    
    /**
     * 根据编号查询考勤信息
     * 
     * @param attendanceId
     * @return
     */
    public AttendanceInfo getAttendanceInfo(Integer attendanceId);
    
    /**
     * 查询
     * 
     * @param info
     * @return
     */
    public List<AttendanceInfo> getList(AttendanceInfo info);
}

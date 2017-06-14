package com.fh.po;

import java.util.Date;

public class AttendanceInfo
{
    private Integer attendanceId;
    
    private Integer studentId;
    
    private String studentName;
    
    private String attendanceDesc;
    
    private String attendanceState;
    
    private Date attendanceTime;
    
    private String attendanceRemark;
    
    public String getStudentName()
    {
        return studentName;
    }
    
    public void setStudentName(String studentName)
    {
        this.studentName = studentName;
    }
    
    public Integer getAttendanceId()
    {
        return attendanceId;
    }
    
    public void setAttendanceId(Integer attendanceId)
    {
        this.attendanceId = attendanceId;
    }
    
    public Integer getStudentId()
    {
        return studentId;
    }
    
    public void setStudentId(Integer studentId)
    {
        this.studentId = studentId;
    }
    
    public String getAttendanceDesc()
    {
        return attendanceDesc;
    }
    
    public void setAttendanceDesc(String attendanceDesc)
    {
        this.attendanceDesc = attendanceDesc;
    }
    
    public String getAttendanceState()
    {
        return attendanceState;
    }
    
    public void setAttendanceState(String attendanceState)
    {
        this.attendanceState = attendanceState;
    }
    
    public Date getAttendanceTime()
    {
        return attendanceTime;
    }
    
    public void setAttendanceTime(Date attendanceTime)
    {
        this.attendanceTime = attendanceTime;
    }
    
    public String getAttendanceRemark()
    {
        return attendanceRemark;
    }
    
    public void setAttendanceRemark(String attendanceRemark)
    {
        this.attendanceRemark = attendanceRemark;
    }
}
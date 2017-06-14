package com.fh.system.dto;

import java.util.List;
import java.util.Map;

/**
 * 工作台报表信息
 * 
 * @author 风华项目组
 * 
 */
public class ReportInfo
{
    
    /**
     * 学员意向状态的报表
     */
    private List<Map> studentSateList;
    
    /**
     * 学员类型状态的报表
     */
    private List<Map> studentMarkList;
    
    /**
     * 学员省份分布数据
     */
    private List<Map> studentProList;
    
    /**
     * 获取当天需要联系的学员信息
     */
    private List<Map> studentList;
    
    public List<Map> getStudentList()
    {
        return studentList;
    }
    
    public void setStudentList(List<Map> studentList)
    {
        this.studentList = studentList;
    }
    
    public List<Map> getStudentProList()
    {
        return studentProList;
    }
    
    public void setStudentProList(List<Map> studentProList)
    {
        this.studentProList = studentProList;
    }
    
    public List<Map> getStudentMarkList()
    {
        return studentMarkList;
    }
    
    public void setStudentMarkList(List<Map> studentMarkList)
    {
        this.studentMarkList = studentMarkList;
    }
    
    public List<Map> getStudentSateList()
    {
        return studentSateList;
    }
    
    public void setStudentSateList(List<Map> studentSateList)
    {
        this.studentSateList = studentSateList;
    }
    
}

package com.fh.recruitstudent.service;

import java.util.List;

import com.fh.po.StudentInfo;

/**
 * 学员信息管理的业务逻辑层
 * 
 * @author 风华项目组
 * 
 */
public interface StudentInfoService
{
    
    /**
     * 根据提交查询学员信息
     * 
     * @param info
     * @return
     */
    public List<StudentInfo> getStudentInfoList(StudentInfo info);
    
    /**
     * 添加学生信息
     * 
     * @param info
     * @return
     */
    public boolean addStudent(StudentInfo info);
    
    /**
     * 修改学生信息
     * 
     * @param info
     * @return
     */
    public boolean updateStudent(StudentInfo info);
    
    /**
     * 根据编号查询学生信息
     * 
     * @param studentId
     * @return
     */
    public StudentInfo getStudentInfo(Integer studentId);
}

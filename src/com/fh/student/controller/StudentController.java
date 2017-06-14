package com.fh.student.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fh.classinfo.service.ClassInfoService;
import com.fh.po.AuditionInfo;
import com.fh.po.ClassInfo;
import com.fh.po.CommunicateInfo;
import com.fh.po.EvaluationInfo;
import com.fh.po.StudentInfo;
import com.fh.po.StudentWriteGrade;
import com.fh.po.TrackRecordInfo;
import com.fh.recruitstudent.service.AuditionInfoService;
import com.fh.recruitstudent.service.StudentInfoService;
import com.fh.recruitstudent.service.TrackRecordInfoService;
import com.fh.student.service.CommunicateInfoService;
import com.fh.student.service.EvaluationInfoService;
import com.fh.student.service.StudentWriteGradeService;

/**
 * 学员管理
 * 
 * @author 风华项目组
 * 
 */
@Controller
@RequestMapping("/student/")
public class StudentController
{
    
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;
    
    @Resource(name = "trackRecordInfoServiceImpl")
    private TrackRecordInfoService trackRecordInfoService;
    
    /**
     * 班级Service
     */
    @Resource(name = "classInfoServiceImpl")
    private ClassInfoService classInfoService;
    
    /**
     * 试听记录业务逻辑接口
     */
    @Resource(name = "auditionInfoServiceImpl")
    private AuditionInfoService auditionInfoService;
    
    // 沟通记录
    @Resource(name = "communicateInfoServiceImpl")
    private CommunicateInfoService communicateInfoService;
    
    // 学员评价
    @Resource(name = "evaluationInfoServiceImpl")
    private EvaluationInfoService evaluationInfoService;
    
    // 学员成绩
    @Resource(name = "studentWriteGradeServiceImpl")
    private StudentWriteGradeService studentWriteGradeService;
    
    @RequestMapping("list.do")
    public String list(StudentInfo stuinfo, Model model, HttpServletRequest request)
    {
        
        // HttpSession session = request.getSession();
        // StaffInfo staff = (StaffInfo) session.getAttribute("staff");
        
        if (stuinfo == null)
        {
            stuinfo = new StudentInfo();
        }
        // if (staff != null) {
        // stuinfo.setStaffId(staff.getStaffId());
        // }
        stuinfo.setStudentMark("2");// -1 表示无效 0表示未分配学员 1已分配学员 2报名学员
        
        List<StudentInfo> list = studentInfoService.getStudentInfoList(stuinfo);
        model.addAttribute("list", list);
        model.addAttribute("stuinfo", stuinfo);
        
        return "student/student/student_list";
    }
    
    /**
     * 修改学员信息
     * 
     * @param stuinfo
     * @param model
     * @return
     */
    @RequestMapping("update.do")
    public String update(StudentInfo stuinfo, Model model, HttpServletRequest request)
    {
        if (stuinfo == null)
        {
            stuinfo = new StudentInfo();
        }
        
        boolean mark = studentInfoService.updateStudent(stuinfo);
        if (mark)
        {
            model.addAttribute("info", "修改学员信息成功！");
        }
        else
        {
            model.addAttribute("info", "修改学员信息失败");
        }
        
        return list(stuinfo, model, request);
    }
    
    /**
     * 删除学员信息
     * 
     * @param stuinfo
     * @param model
     * @return
     */
    @RequestMapping("delete.do")
    public String delete(StudentInfo stuinfo, Model model, HttpServletRequest request)
    {
        if (stuinfo == null)
        {
            stuinfo = new StudentInfo();
        }
        stuinfo.setStudentMark("-1");// -1 表示无效 0表示未分配学员 1已分配学员 2报名学员
        
        boolean mark = studentInfoService.updateStudent(stuinfo);
        if (mark)
        {
            model.addAttribute("info", "删除学员信息成功！");
        }
        else
        {
            model.addAttribute("info", "删除学员信息失败");
        }
        
        return list(stuinfo, model, request);
    }
    
    /**
     * 根据编号查询学员信息
     * 
     * @param studentId
     * @param model
     * @return
     */
    @RequestMapping("show.do")
    public String show(Integer studentId, Model model)
    {
        
        StudentInfo stuinfo = studentInfoService.getStudentInfo(studentId);
        model.addAttribute("stuinfo", stuinfo);
        TrackRecordInfo trackRecordinfo = new TrackRecordInfo();
        trackRecordinfo.setStudentId(studentId);
        // 获取跟踪记录的相关信息
        List<TrackRecordInfo> tracklist = trackRecordInfoService.getTrackRecordList(trackRecordinfo);
        model.addAttribute("tracklist", tracklist);
        
        AuditionInfo info = new AuditionInfo();
        info.setStudentId(studentId);
        // 试听记录的信息
        List<AuditionInfo> auditlist = auditionInfoService.getList(info);
        model.addAttribute("auditlist", auditlist);
        
        CommunicateInfo comminfo = new CommunicateInfo();
        comminfo.setStudentId(stuinfo.getStudentId());
        // 沟通记录
        List<CommunicateInfo> commlist = communicateInfoService.getList(comminfo);
        model.addAttribute("commlist", commlist);
        
        System.out.println("长度：" + commlist.size());
        
        EvaluationInfo evaluationInfo = new EvaluationInfo();
        evaluationInfo.setStudentId(stuinfo.getStudentId());
        // 学员评价
        List<EvaluationInfo> evaluationlist = evaluationInfoService.getList(evaluationInfo);
        model.addAttribute("evaluationlist", evaluationlist);
        
        StudentWriteGrade studentWriteGrade = new StudentWriteGrade();
        studentWriteGrade.setStudentId(stuinfo.getStudentId());
        // 学员成绩
        List<StudentWriteGrade> swglist = studentWriteGradeService.getList(studentWriteGrade);
        model.addAttribute("swglist", swglist);
        
        // 根据编号查询班级信息
        ClassInfo classInfo = classInfoService.getClassInfo(stuinfo.getClassId());
        model.addAttribute("classInfo", classInfo);
        
        return "student/student/student_show";
    }
    
    /**
     * 加载修改页面
     * 
     * @param studentId
     * @param model
     * @return
     */
    @RequestMapping("load.do")
    public String load(Integer studentId, Model model)
    {
        
        StudentInfo stuinfo = studentInfoService.getStudentInfo(studentId);
        model.addAttribute("stuinfo", stuinfo);
        
        return "student/student/student_update";
    }
    
    /**
     * 时间属性的编辑器
     */
    @InitBinder
    public void initBinder(ServletRequestDataBinder bin)
    {
        bin.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
}

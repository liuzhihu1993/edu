package com.fh.system.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fh.po.AnthortyInfo;
import com.fh.po.StaffInfo;
import com.fh.system.dto.AnthortyDTO;
import com.fh.system.dto.ReportInfo;
import com.fh.system.service.AnthortyService;
import com.fh.system.service.ReportService;
import com.fh.system.service.StaffInfoService;

/**
 * 用户登录
 * 
 * @author 风华项目组
 * 
 */
@Controller
public class LoginController
{
    
    @Resource(name = "staffInfoServiceImpl")
    private StaffInfoService staffInfoService;
    
    @Resource(name = "anthortyServiceImpl")
    private AnthortyService anthortyService;
    
    @Resource(name = "reportServiceImpl")
    private ReportService reportService;
    
    @RequestMapping("/out.do")
    public String out(HttpServletRequest request)
    {
        // 获取Session
        HttpSession session = request.getSession();
        session.removeAttribute("staff");
        return "login";
    }
    
    /**
     * 用户登录
     * 
     * @return
     */
    @RequestMapping("/login.do")
    public String login(StaffInfo staffInfo, HttpServletRequest request)
    {
        
        // 获取Session
        HttpSession session = request.getSession();
        
        if (staffInfo != null && staffInfo.getUserNumber() != null && !staffInfo.getUserNumber().equals("")
            && staffInfo.getUserPassowrd() != null && !staffInfo.getUserPassowrd().equals(""))
        {
            
            // 获取当前登录用户信息
            List<StaffInfo> list = staffInfoService.getList(staffInfo);
            if (list != null && list.size() > 0)
            {
                // 把当前用户登录信息保存到Session中
                StaffInfo staff = list.get(0);
                session.setAttribute("staff", staff);
                // 获取报表信息
                ReportInfo reportInfo = reportService.getReportInfo();
                session.setAttribute("reportInfo", reportInfo);
                
                if (staff.getRoleId() != null)
                {
                    // 根据角色编号查询出权限信息
                    List<AnthortyInfo> anthlist = anthortyService.getAnthList(staff.getRoleId());
                    
                    // 构建菜单（一级和二级）
                    List<AnthortyDTO> dtolist = new ArrayList<AnthortyDTO>();
                    
                    for (AnthortyInfo anth : anthlist)
                    {
                        
                        if (anth != null && anth.getAnthortyPid() == 1)
                        {
                            AnthortyDTO dto = new AnthortyDTO();
                            dto.setAnth(anth);
                            
                            // 子菜单
                            List<AnthortyInfo> sublist = new ArrayList<AnthortyInfo>();
                            getAnthorty(sublist, anthlist, anth.getAnthortyId());
                            
                            dto.setList(sublist);
                            dtolist.add(dto);
                        }
                    }
                    
                    request.setAttribute("dtolist", dtolist);
                    
                    return "index";
                }
                
            }
            else
            {
                request.setAttribute("info", "账号或密码错误！");
            }
            
        }
        else
        {
            request.setAttribute("info", "账号或密码不能为空！");
        }
        
        return "login";
    }
    
    public void getAnthorty(List<AnthortyInfo> sublist, List<AnthortyInfo> list, Integer anthortyId)
    {
        
        if (list != null && list.size() > 0)
        {
            for (AnthortyInfo anth : list)
            {
                if (anth != null && anth.getAnthortyPid() != null && anth.getAnthortyPid().equals(anthortyId))
                {
                    
                    sublist.add(anth);
                    getAnthorty(sublist, list, anth.getAnthortyId());
                }
            }
        }
        
    }
    
}

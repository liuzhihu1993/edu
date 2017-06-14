package com.fh.marketing.service;

import java.util.List;

import com.fh.po.TemplateInfo;

/**
 * 模板管理的业务逻辑接口
 * 
 * @author 风华项目组
 * 
 */
public interface TemplateInfoService
{
    
    /**
     * 添加模板信息
     * 
     * @param info
     * @return
     */
    public boolean addTemplate(TemplateInfo info);
    
    /**
     * 修改模板信息
     * 
     * @param info
     * @return
     */
    public boolean updateTemplate(TemplateInfo info);
    
    /**
     * 删除模板信息
     * 
     * @param templateId
     * @return
     */
    public boolean deleteTemplate(Integer templateId);
    
    /**
     * 根据编号获取模板信息
     * 
     * @param templateId
     * @return
     */
    public TemplateInfo getTemplate(Integer templateId);
    
    /**
     * 根据条件查询模板信息
     * 
     * @param info
     * @return
     */
    public List<TemplateInfo> getTemplateInfoList(TemplateInfo info);
}

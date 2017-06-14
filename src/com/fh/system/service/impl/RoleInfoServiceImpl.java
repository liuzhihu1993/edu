package com.fh.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.po.RoleInfo;
import com.fh.system.mapper.RoleInfoMapper;
import com.fh.system.service.RoleInfoService;

@Service
public class RoleInfoServiceImpl implements RoleInfoService
{
    
    @Resource(name = "roleInfoMapper")
    private RoleInfoMapper roleInfoMapper;
    
    @Override
    public boolean addRole(RoleInfo role)
    {
        
        try
        {
            if (role != null)
            {
                // 状态： 1 有效 0无效
                role.setRoleState("1");
            }
            int i = roleInfoMapper.insertSelective(role);
            if (i > 0)
            {
                return true;
            }
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return false;
    }
    
    @Override
    public List<RoleInfo> getRoleList(RoleInfo role)
    {
        
        if (role != null && role.getRoleName() != null && !role.getRoleName().equals(""))
        {
            role.setRoleName("%" + role.getRoleName() + "%");
        }
        
        return roleInfoMapper.getRoleInfoList(role);
    }
    
    @Override
    public RoleInfo getRoleInfo(Integer roleId)
    {
        // TODO Auto-generated method stub
        return roleInfoMapper.selectByPrimaryKey(roleId);
    }
    
    @Override
    public boolean updateRole(RoleInfo role)
    {
        try
        {
            
            int i = roleInfoMapper.updateByPrimaryKeySelective(role);
            if (i > 0)
            {
                return true;
            }
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }
    
}

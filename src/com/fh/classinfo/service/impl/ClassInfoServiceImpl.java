package com.fh.classinfo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.classinfo.mapper.ClassInfoMapper;
import com.fh.classinfo.service.ClassInfoService;
import com.fh.po.ClassInfo;

@Service
public class ClassInfoServiceImpl implements ClassInfoService {

	/**
	 * 班级的mapper
	 */
	@Resource(name="classInfoMapper")
	private ClassInfoMapper classInfoMapper;

	@Override
	public boolean add(ClassInfo info) {
		try {
			
			int i = classInfoMapper.insertSelective(info);
			
			if(i>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(ClassInfo info) {
	try {
			
			int i = classInfoMapper.updateByPrimaryKeySelective(info);
			
			if(i>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ClassInfo getClassInfo(Integer classId) {
		// TODO Auto-generated method stub
		return classInfoMapper.selectByPrimaryKey(classId);
	}

	@Override
	public List<ClassInfo> getList(ClassInfo info) {
		// TODO Auto-generated method stub
		return classInfoMapper.getClassInfoList(info);
	}

}

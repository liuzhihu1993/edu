<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="s" uri="http://beifengwang.com" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>c</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>
<script  type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">招生管理</a></li>
        <li>招生线索</li>
        <li>查看学员</li>
    </ul>
</div>

<form action="" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-9 col-sm-offset-2">
    	<a class="btn btn-success" href="recruitstudent/loadpositive.do?studentId=${stuinfo.studentId }">转为正式学员</a>
        	<a class="btn btn-info" href="recruitstudent/load.do?studentId=${stuinfo.studentId }">修改学员信息</a>
        	<a class="btn btn-danger" href="recruitstudent/delete.do?studentId=${stuinfo.studentId }">删除学员信息</a>
           
            <a class="btn btn-warning" href="recruitstudent/list.do">返回上一级</a>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                <p class="form-control-static">${stuinfo.studentId }</p>
                	
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${stuinfo.studentName }</p>
                	
                </div>
            </div>
        </div>
    </div>
    	<!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-4">
                 <p class="form-control-static">${stuinfo.studentSex }</p>
                
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-5">
                 <p class="form-control-static">${stuinfo.studentAge }</p>
                 </div>
            </div>
        </div>
    </div>
   <!--结束 -->
       	<!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">手机号码</label>
                <div class="col-sm-9">
                  <p class="form-control-static">${stuinfo.studentTellphone }</p>
                     </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件</label>
                <div class="col-sm-9">
                <p class="form-control-static">${stuinfo.studentEmail }</p>
                	   </div>
            </div>
        </div>
    </div>
   <!--结束 -->
    <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">身份证</label>
                <div class="col-sm-9">
                  <p class="form-control-static">${stuinfo.studentIdcard }</p>
                	                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">家庭地址</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${stuinfo.studentAddress }</p>
                     </div>
            </div>
        </div>
    </div>
   <!--结束 -->
   <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${stuinfo.studentBirthday }</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">所在院校</label>
                <div class="col-sm-9">
                    <p class="form-control-static">${stuinfo.studentSchool }</p>
                             </div>
            </div>
        </div>
    </div>
   <!--结束 -->
      <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ号码</label>
                <div class="col-sm-9">
                   <p class="form-control-static">${stuinfo.studentQq }</p>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">家长姓名</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${stuinfo.studentParentsName }</p>
                 </div>
            </div>
        </div>
    </div>
   <!--结束 -->
         <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">省份</label>
                <div class="col-sm-9">
                <p class="form-control-static">${stuinfo.studentPro }</p>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">家长电话</label>
                <div class="col-sm-9">
                  <p class="form-control-static">${stuinfo.studentParentsPhone }</p>
                 </div>
            </div>
        </div>
    </div>
   <!--结束 -->
            <!--开始 -->
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">城市</label>
                <div class="col-sm-9">
                <p class="form-control-static">${stuinfo.studentProCity }</p>
                 </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">意向状态</label>
                <div class="col-sm-6">
                 <p class="form-control-static"><s:dataname dataId="${stuinfo.studentSate }"/></p>
                	
                </div>
            </div>
        </div>
    </div>
   <!--结束 -->
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述信息</label>
                <div class="col-sm-9">
                  <p class="form-control-static">${stuinfo.studentDesc }</p>
                	
                </div>
            </div>
        
        </div>

    </div>
 
     <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">跟踪记录 ---> <a class="btn btn-info btn-xs"  href="trackrecordinfo/loadadd.do">添加新记录</a> </h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>主题</th>
	        			<th>内容</th>
	        			<th>意向状态</th>
	        			<th>联系时间 </th>
	        			<th>下次联系时间</th>
	        		</tr>
	        		<c:forEach items="${tracklist }" var="track">
	        			<tr>
	        				<td>${track.trackRecordTitle }</td>
	        				<td>${track.trackRecordContent }</td>
	        				<td>${track.dataContent }</td>
	        				<td><fmt:formatDate value="${track.trackRecordTime }"/></td>
	        				<td><fmt:formatDate value="${track.nextRecordTime }"/></td>
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
  <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">试听记录---> <a class="btn btn-info btn-xs"  href="auditioninfo/loadadd.do">添加新记录</a> </h5>
    	<div class="row">
	    	<div class="col-sm-12">
	        	<table class="table">
	        		<tr>
	        			<th>试听课程 </th>
	        			<th>试听时间 </th>
	        			<th>地点</th>
	        			<th>描述 </th>
	        			
	        		</tr>
	        		<c:forEach items="${auditlist }" var="audit">
	        			<tr>
	        				<td>${audit.auditionCourse }</td>
	        				<td><fmt:formatDate value="${audit.auditionTime }"/></td>
	        				<td>${audit.auditionAddr }</td>
	        				<td>${audit.auditionDesc }</td>
	        				
	        			</tr>
	        		</c:forEach>
	        	</table>
	        
	        </div>
   	    </div>
   	<div class="row">
    	<div class="col-sm-9 col-sm-offset-2">
  <a class="btn btn-success" href="recruitstudent/loadpositive.do?studentId=${stuinfo.studentId }">转为正式学员</a>
        	<a class="btn btn-info" href="recruitstudent/load.do?studentId=${stuinfo.studentId }">修改学员信息</a>
        	<a class="btn btn-danger" href="recruitstudent/delete.do?studentId=${stuinfo.studentId }">删除学员信息</a>
            <a class="btn btn-warning" href="recruitstudent/list.do">返回上一级</a>
        </div>
    </div>
</form>

</body>
</html>
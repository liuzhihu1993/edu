<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>员工管理</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="resources/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="resources/js/bootstrap.min.js"></script>

</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">系统管理</a></li>
        <li>员工管理</li>
        <li>查看员工信息</li>
    </ul>
</div>

<form action="" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
        	<a href="system/load.do?staffId=${staffInfo.staffId }" class="btn btn-success" >修改</a>
        	<a href="system/delete.do?staffId=${staffInfo.staffId }" class="btn btn-success" >修改</a>
            <a href="system/list.do" class="btn btn-warning">返回上一级</a>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.staffId }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.staffName }</p>
                </div>
            </div>
        </div>

    </div>
    <!-- 开始2 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-5">
                	<p class="form-control-static">${staffInfo.staffAge }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-4">
                	<p class="form-control-static">${staffInfo.staffSex }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束2 -->
    <!-- 开始3 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-6">
                	<p class="form-control-static">${staffInfo.staffNativePlace }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">身份证</label>
                <div class="col-sm-9">
               <p class="form-control-static">${staffInfo.staffIdcard }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束3 -->
        <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-9">
                	 <p class="form-control-static"><fmt:formatDate value="${staffInfo.staffBrithday }" type="both"  pattern="yyyy年MM月dd日" /></p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">办公电话</label>
                <div class="col-sm-9">
                 <p class="form-control-static">${staffInfo.staffOfficePhone }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束4 -->
    <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件</label>
                <div class="col-sm-9">
                	  <p class="form-control-static">${staffInfo.staffEamil }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">移动电话</label>
                <div class="col-sm-9">
               	 <p class="form-control-static">${staffInfo.staffMobilePhone }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束4 -->    
    <!-- 开始5 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭住址</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.staffAddr }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
              		 <p class="form-control-static">${staffInfo.staffQq }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束5 -->    
    <!-- 开始6 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入职时间</label>
                <div class="col-sm-9">
                	 <p class="form-control-static">
                	 <fmt:formatDate value="${staffInfo.staffEntryTime }" type="both"  pattern="yyyy年MM月dd日" />
                	 </p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">教育水平</label>
                <div class="col-sm-6">
                		<p class="form-control-static">${staffInfo.staffEductionLevel }</p>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束6 -->
        <!-- 开始7 -->
	<div class="row">

        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">员工类型</label>
                <div class="col-sm-6">
               
                <p class="form-control-static">${staffInfo.staffState=='1'?'普通员工':'教师' }</p>
                		
                </div>
            </div>
        </div>
    </div>
    <!-- 结束7 -->    
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">备注信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">备注</label>
                <div class="col-sm-9">
                		<p class="form-control-static">${staffInfo.staffRemark }</p>
                </div>
            </div>
        
        </div>

    </div>
        <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">账号信息</h5>
    	<div class="row">
        	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">账号</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.userNumber }</p>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                	<p class="form-control-static">${staffInfo.userPassowrd }</p>
                </div>
            </div>
        </div>
    </div>
   	<div class="row">
    	<div class="col-sm-5 col-sm-offset-4">
          	<a href="staffinfo_update.html" class="btn btn-success" >修改</a>
            <input  type="reset" class="btn  btn-danger" value="删除"/>
             <a href="system/list.do" class="btn btn-warning">返回上一级</a>
        </div>
    </div>
</form>


</body>
</html>
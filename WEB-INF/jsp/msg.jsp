<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结果页面</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body class="container" background="images/bg.png">
<div id="divcontent">
<table width="850px" border="0" cellspacing="0">
  <tr>
    <td style="padding:30px; text-align:center">
    	<table width="60%" border="0" cellspacing="0" style="margin-top:70px">
	      <tr>
	        <td style="padding-top:30px">
	        	<font style="color:#ffffff">
			        <s:actionmessage/>
			        <s:actionerror/>
	        	</font>
	        <br />
	        <br />
	          <a href="${ pageContext.request.contextPath }/index.action">返回首页</a>
	          <a href="${ pageContext.request.contextPath }/user_registPage.action">返回注册</a>
	          <a href="${ pageContext.request.contextPath }/user_loginPage.action">返回登录</a>
	        </td>
	      </tr>
    	</table>
    <h1>&nbsp;</h1>
    </td>
    </tr>
</table>
</div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" />
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
</head>

<frameset rows="103,*,43" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/admin/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="159,*" frameborder="no" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/admin/left.jsp" name="leftFrame" scrolling="yes" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="${pageContext.request.contextPath}/admin/welcome.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes><body>
</body>
</noframes>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%> --%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%-- <base href="<%=basePath%>"> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="${pageContext.request.contextPath}/css/admin/left.css"
	type="text/css" rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/js/admin/jquery-1.4.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/admin/left.js"></script>
<title></title>
</head>
<body>
	<div class="all">
		<img
			src="${pageContext.request.contextPath}/images/admin/menu_arrow.gif"
			id="allmenu" />
	</div>
	<div class="main">
		<div class="menus">
			<ul id="menu">

				<li class="title"><a href="javascript:void(0)"><b>[用户管理]</b></a>
					<ul class="menuhide">
						<li><a
							href="${pageContext.request.contextPath}/userAdmin_findAll.action?page=1"
							target="mainFrame">用户管理</a></li>
					</ul></li>

				<li class="title"><a href="javascript:void(0);"><b>[商品管理]</b></a>
					<ul class="menuhide">
						<li><a
							href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=1"
							target="mainFrame">查看商品</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminProduct_addPage.action"
							target="mainFrame">添加商品</a></li>
					</ul></li>


				<li class="title"><a href="javascript:;" target="mainFrame"><b>[商品分类]</b></a>
					<ul class="menuhide">

						<li><a
							href="${pageContext.request.contextPath}/adminCategory_findAll.action"
							target="mainFrame">一级商品分类</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1"
							target="mainFrame">二级商品分类</a></li>
					</ul></li>

				<li class="title"><a href="javascript:;" target="mainFrame"><b>[订单管理]</b></a>
					<ul class="menuhide">

						<li><a
							href="${pageContext.request.contextPath}/adminOrder_findAll.action?page=1"
							target="mainFrame">处理订单</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</body>
</html>

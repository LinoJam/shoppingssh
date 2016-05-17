<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>我的商城</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrap">
		<div class="container header">
			<div class="span5">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/index.action"> <img
						src="${pageContext.request.contextPath}/images/logo.png"
						alt="logo" />
					</a>
				</div>
			</div>
			<div class="span9">
				<div class="headerAd">
					<img src="${pageContext.request.contextPath}/image/headers.jpg"
						width="320" height="50" alt="." title="." />
				</div>
			</div>
			<%@ include file="menu.jsp"%>
		</div>
		<br />

		<div class="global_l">
			<div class="module">
				<div class="caption">
					<span><a>更多>></a></span><a href="#">公告栏</a>
				</div>
				<div class="content" style="padding:5px;">
					<ul>
						<!-- 测试 -->
						<li><font style="font-family:宋体; color:#F10582;">·</font><a
							href="http://localhost:8080/shoppingssh/user_registPage.action"
							title="" style="font-family:宋体; color:red;">满300减100活动</a>
							${article.add_time}</li>
						<li><font style="font-family:宋体;">·</font><a
							href="${article.url}" title="">女装专场5折随时抢</a> ${article.add_time}</li>
						<li><font style="font-family:宋体;">·</font><a
							href="${article.url}" title="">呵呵呵</a> ${article.add_time}</li>
						<li><font style="font-family:宋体;">·</font><a
							href="${article.url}" title="">哈哈哈</a> ${article.add_time}</li>
					</ul>
				</div>
			</div>

		</div>
		<div class="global_r">
			<div class="container index">

				<div class="span24">
					<div id="newProduct" class="newProduct clearfix">
						<div class="title">
							<strong
								style=" line-height: 38px; font-family: Microsoft YaHei; color: #ffffff; padding-left: 15px;
	font-size: 14px;">→最新上架</strong><font
								style="float:right;line-height: 38px; font-family: Microsoft YaHei; color: #ffffff;">更多>>&nbsp;&nbsp;</font>
						</div>
						<!-- <div class="newProductAd">
							<img src="${pageContext.request.contextPath}/image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
						</div> -->
						<ul class="tabContent" style="display: block;">
							<!-- 遍历最新 -->
							<s:iterator var="p" value="nList">
								<li><a
									href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
									target="_blank"> <img
										src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
										data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"
										style="display: block;"></a></li>
							</s:iterator>
						</ul>
					</div>
				</div>

				<%-- <div class="span24">
					<div id="hotProduct" class="hotProduct clearfix">
						<div class="title">
							<strong>最受欢迎</strong>
						</div>
						<ul class="tab"></ul>
						<!--<div class="hotProductAd">
						<img src="${pageContext.request.contextPath}/image/a.jpg" width="260" height="343" alt="热门商品" title="热门商品">
					</div> -->
						<ul class="tabContent" style="display: block;">
							<!-- 遍历热卖 -->
							<s:iterator var="p" value="hList">
								<li><a
									href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
									target="_blank"><img
										src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
										data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg"
										style="display: block;"></a></li>
							</s:iterator>
						</ul>
					</div>
				</div> --%>



			</div>
		</div>
		<div class="container index">
			<%@ include file="bottom.jsp"%>
		</div>
	</div>
</body>
</html>
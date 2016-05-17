<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- 分类商品列表 -->
<title>SSHshopping</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index.action"> <img
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="SSHshopping"></a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				<img src="${pageContext.request.contextPath}/image/header.jpg"
					width="320" height="50" alt="." title=".">
			</div>
		</div>
		<%@ include file="menu.jsp"%>
	</div>
	<div class="container productList">
		<div class="span6">
			<div class="hotProductCategory">
				<!-- 迭代一级分类(左侧) 分类对象压入栈顶-->
				<s:iterator var="c" value="#session.cList">
					<dl>
						<dt>
							<a
								href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
									value="#c.cname" /></a>
						</dt>
						<!-- 迭代2级分类 不是懒加载 一级分类里面的2级分类集合 cs对象压入栈顶-->
						<s:iterator var="cs" value="#c.categorySeconds">
							<dd>
								<a
									href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property
										value="#cs.csname" /></a>
							</dd>
						</s:iterator>
					</dl>
				</s:iterator>
			</div>
		</div>
		<div class="span18 last">

			<form id="productForm" action="" method="get">
				<div id="result" class="result table clearfix">
					<ul>
						<!-- 迭代该类别商品 -->
						<s:iterator var="p" value="pageBean.list">
							<li><a
								href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
									<img
									src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
									width="170" height="170" style="display: inline-block;">
										<span style='color:green'> <s:property value="#p.pname" />
									</span> <span class="price"> 价格： ￥<s:property
												value="#p.shop_price" />
									</span>
							</a></li>
						</s:iterator>
					</ul>
				</div>

				<div class="pagination">
					<span>第 <s:property value="pageBean.page" />/<s:property
							value="pageBean.totalPage" /> 页
					</span>
					<!-- 一级分类下的分页 -->
					<s:if test="cid != null">
						<s:if test="pageBean.page != 1">
							<a
								href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=1"
								class="firstPage">&nbsp;</a>
							<a
								href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>"
								class="previousPage">&nbsp;</a>
						</s:if>

						<!-- 迭代页码 -->
						<s:iterator var="i" begin="1" end="pageBean.totalPage">
							<s:if test="pageBean.page != #i">
								<a
									href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property
										value="#i" /></a>
							</s:if>
							<s:else>
								<span class="currentPage"><s:property value="#i" /></span>
							</s:else>
						</s:iterator>

						<s:if test="pageBean.page != pageBean.totalPage">
							<a class="nextPage"
								href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
							<a class="lastPage"
								href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
						</s:if>
					</s:if>

					<!-- 2级分类下的分页 -->
					<s:if test="csid != null">
						<s:if test="pageBean.page != 1">
							<a
								href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=1"
								class="firstPage">&nbsp;</a>
							<a
								href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>"
								class="previousPage">&nbsp;</a>
						</s:if>

						<s:iterator var="i" begin="1" end="pageBean.totalPage">
							<s:if test="pageBean.page != #i">
								<a
									href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property
										value="#i" /></a>
							</s:if>
							<s:else>
								<span class="currentPage"><s:property value="#i" /></span>
							</s:else>
						</s:iterator>

						<s:if test="pageBean.page != pageBean.totalPage">
							<a class="nextPage"
								href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
							<a class="lastPage"
								href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
						</s:if>
					</s:if>
				</div>
			</form>
		</div>
	</div>
	<div class="container index">
		<%@ include file="bottom.jsp"%>
	</div>
</body>
</html>
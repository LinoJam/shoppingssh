<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="span10 last">
	<div class="topNav clearfix">
		<ul>
			<s:if test="#session.existUser == null">
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a
					href="${ pageContext.request.contextPath }/user_loginPage.action"><font
						style=" color: #F10582;">登录</font></a>|
				</li>
				<li id="headerRegister" class="headerRegister"
					style="display: list-item;"><a
					href="${ pageContext.request.contextPath }/user_registPage.action"><font
						style=" color: #F10582;">注册</font></a>|</li>
			</s:if>
			<s:else>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<s:property value="#session.existUser.name" /> |
				</li>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a
					href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
					|
				</li>
				<li id="headerRegister" class="headerRegister"
					style="display: list-item;"><a
					href="${ pageContext.request.contextPath }/user_quit.action">退出</a>|
				</li>
			</s:else>

			<li><a>购物指南</a> |</li>
			<li><a>关于我们</a> |</li>
			<li><a href="http://localhost:8080/shoppingssh/admin/">管理员入口</a></li>
		</ul>
	</div>
	<div
		style="height: 28px;
	line-height: 28px;
	float: right;
	margin-bottom: 4px;
	padding: 0px 10px 0px 26px;
	white-space: nowrap;
	border: solid 1px #f0f0f0;
		background:url(${ pageContext.request.contextPath }/images/cartclick.jpg)">
		<a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a>
	</div>
</div>
<div class="span24">
	<ul class="mainNav">
		<li><a href="${ pageContext.request.contextPath }/index.action">首页</a>
			|</li>
		<!-- 遍历一级分类 -->
		<s:iterator var="c" value="#session.cList">
			<li><a
				href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
						value="#c.cname" /></a> |</li>
		</s:iterator>
	</ul>
</div>
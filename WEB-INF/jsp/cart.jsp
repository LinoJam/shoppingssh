<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>购物车</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/cart.css"
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
	<div class="container cart">
		<!-- 调用cat 的getCartItems方法 有购物车项-->
		<s:if test="#session.cart.cartItems.size() != 0">
			<div class="span24">
				<br />
				<div class="step step1">==============购物车信息=============</div>
				<table>
					<tbody>
						<tr>
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
							<th>操作</th>
						</tr>
						<!-- 迭代购物车里的购物项目 -->
						<s:iterator var="cartItem" value="#session.cart.cartItems">
							<tr>
								<td width="60"><img
									src="${pageContext.request.contextPath}/<s:property value="#cartItem.product.image"/>"></td>
								<td><a target="_blank"><s:property
											value="#cartItem.product.pname" /></a></td>
								<td>￥<s:property value="#cartItem.product.shop_price" />
								</td>
								<td class="quantity" width="60"><s:property
										value="#cartItem.count" /></td>
								<td width="140"><span class="subtotal">￥<s:property
											value="#cartItem.subtotal" /></span></td>
								<td><a
									href="${ pageContext.request.contextPath }/cart_removeCart.action?pid=<s:property value="#cartItem.product.pid"/>"
									class="delete">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<%-- <em id="promotion"></em> <em>登录后确认是否享有优惠</em> 赠送积分: <em
						id="effectivePoint"><s:property value="#session.cart.total" /></em> --%>
					商品金额: <strong id="effectivePrice">￥<s:property
							value="#session.cart.total" />元
					</strong>
				</div>
				<div class="bottom">
					<a
						href="${ pageContext.request.contextPath }/cart_clearCart.action"
						id="clear" class="clear">清空购物车</a> <a
						href="${ pageContext.request.contextPath }/order_saveOrder.action"
						id="submit" class="submit">提交订单</a>
				</div>
			</div>
		</s:if>
		<!-- 购物车没有购物项目 -->
		<s:else>
			<div class="span24">
				<div class="step step1">
					<br /> <span>==============还没有购物============</span>
				</div>
			</div>
		</s:else>
	</div>
	<div class="container index">
		<%@ include file="bottom.jsp"%>
	</div>
</body>
</html>
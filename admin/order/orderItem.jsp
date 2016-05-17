<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table width="100%">
	<s:iterator var="orderItem" value="list">
		<tr
			style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
			<td align="center" width="25%">商品图片</td>
			<td align="center" width="50%">商品名称</td>
			<td align="center" width="10%">购买件数</td>
			<td align="center" width="15%">应付价格</td>
		</tr>
		<tr>
			<td><img width="40" height="45"
				src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"></td>
			<td><s:property value="#orderItem.product.pname" /></td>
			<td><s:property value="#orderItem.count" />件</td>
			<td>￥<s:property value="#orderItem.subtotal" /></td>
		</tr>
	</s:iterator>
</table>
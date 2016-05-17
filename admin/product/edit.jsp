<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/css/Style1.css"
	type="text/css" rel="stylesheet">
</HEAD>

<body>
	<!--  -->
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminProduct_update.action"
		method="post" enctype="multipart/form-data">
		<!-- 隐藏元素 -->
		<input type="hidden" name="pid"
			value="<s:property value="model.pid"/>"> <input type="hidden"
			name="image" value="<s:property value="model.image"/>">
		<table cellSpacing="1" cellPadding="5" width="80%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>编辑商品</STRONG></strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品名称：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="pname" value="${model.pname }"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					是否热门：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="is_hot">
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>是</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>否</option>
				</select></td>
			</tr>
			<%-- <tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					市场价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="market_price"
					value="<s:property value="model.market_price"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr> --%>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="shop_price" value="<s:property value="model.shop_price"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品图片：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="file" name="upload" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					所属的二级分类：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3">
					<!-- 对象导航传递 --> <select name="categorySecond.csid">
						<s:iterator var="cs" value="csList">
							<option value="<s:property value="#cs.csid"/>"
								<s:if test="#cs.csid == model.categorySecond.csid">selected</s:if>><s:property
									value="#cs.csname" /></option>
						</s:iterator>
				</select>
				</td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品描述：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><textarea
						name="pdesc" rows="5" cols="30"><s:property
							value="model.pdesc" /></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td class="ta_01" style="WIDTH: 100%" align="left" bgColor="#f5fafe"
					colSpan="4">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						style="background-color: #EADAEB;">确定</button> <INPUT
					style="background-color: #EADAEB;" type="button"
					onclick="history.go(-1)" value="返回" />
					<button type="reset" value="重置" style="background-color: #EADAEB;">重置</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>
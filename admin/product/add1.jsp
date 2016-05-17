<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/css/Style1.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/admin/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/admin/ajaxupload.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/admin/upload.js"></script>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/general.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/sample.css">
</HEAD>

<body>
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminProduct_save.action"
		method="post" enctype="multipart/form-data">
		&nbsp;
		<table cellSpacing="1" cellPadding="5" width="80%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>添加商品</STRONG> </strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品名称：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="pname" value="" id="userAction_save_do_logonName" class="bg" />
				</td>
				<%-- <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					是否热门：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="is_hot">
						<option value="1">是</option>
						<option value="0">否</option>
				</select></td> --%>
			</tr>
			<tr>
				<!-- <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					市场价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="market_price" value="" id="userAction_save_do_logonName"
					class="bg" /></td> -->
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="shop_price" value="" id="userAction_save_do_logonName"
					class="bg" /></td>
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
				<td class="ta_01" bgColor="#ffffff" colspan="3"><select
					name="categorySecond.csid">
						<s:iterator var="cs" value="csList">
							<option value="<s:property value="#cs.csid"/>"><s:property
									value="#cs.csname" /></option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品描述：</td>
				<td class="ckeditor" bgColor="#ffffff" colspan="3"><textarea
						name="goods.goodsdesc" cols="120" id="editor1" rows="15"></textarea></td>
				<!-- class="ta_01" -->
			</tr>
			<tr style="margin-left: 30px;">
				<td></td>
				<td class="ta_01" style="WIDTH: 100%; margin-left: 30px;"
					align="left" bgColor="#f5fafe" colSpan="4">
					<button type="submit" style="background-color: #EADAEB;"
						id="userAction_save_do_submit" value="确定">添加</button> <INPUT
					type="button" style="background-color: #EADAEB;"
					onclick="history.go(-1)" value="返回" />
					<button type="reset" style="background-color: #EADAEB;" value="重置">重置</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>
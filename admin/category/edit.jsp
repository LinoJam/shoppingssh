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
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminCategory_update.action"
		method="post">
		<input type="hidden" name="cid"
			value="<s:property value="model.cid"/>" /> &nbsp;
		<table cellSpacing="1" cellPadding="5" width="60%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>编辑一级分类</STRONG> </strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					【一级分类名称】：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="text" name="cname" value="<s:property value="model.cname"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr>

			<tr>
				<td></td>
				<td class="ta_01" style="WIDTH: 100%" align="left" bgColor="#f5fafe"
					colSpan="4">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						>确定</button>
					<INPUT  type="button" onclick="history.go(-1)"
					value="返回" />
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>
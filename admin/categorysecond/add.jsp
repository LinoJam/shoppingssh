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
		action="${pageContext.request.contextPath}/adminCategorySecond_save.action"
		method="post">
		&nbsp;
		<table cellSpacing="1" cellPadding="5" width="60%" align="center"
			bgColor="#f5fafe" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>添加二级分类</STRONG></strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					【二级分类的名称】：</td>
				<td class="ta_01"><input type="text" name="csname" value=""
					id="userAction_save_do_logonName" class="bg" /></td>

			</tr>
			<tr>
				<td width="18%" align="center" class="ta_01">【所属的一级分类】：</td>
				<td class="ta_01">
					<!-- 对象导航传递 --> <select name="category.cid">
						<s:iterator var="c" value="cList">
							<option value="<s:property value="#c.cid"/>"><s:property
									value="#c.cname" /></option>
						</s:iterator>
				</select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="ta_01" style="WIDTH: 100%" align="left" colSpan="4">
					<button type="submit" id="userAction_save_do_submit" value="确定">确定</button>
					<!-- <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">重置</button> -->

					<INPUT type="button" onclick="history.go(-1)" value="返回" /> <span
					id="Label1"></span>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>
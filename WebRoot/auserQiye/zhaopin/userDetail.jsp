<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"/>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"/>
		
		<style type="text/css">
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
        </script>
	</head>

	<body>
		<div class="body-box">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				         用户名：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" value="${requestScope.user.userName }" name="userName" size="20" disabled="disabled"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        密码：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="password" name="userPw" value="${requestScope.user.userPw }"  size="22" disabled="disabled"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        真实姓名：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userRealname" value="${requestScope.user.userRealname }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        年龄：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userAge" value="${requestScope.user.userAge }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        性别：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userSex" value="${requestScope.user.userSex }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        住址：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userAddress" value="${requestScope.user.userAddress }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        联系方式：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userTel" value="${requestScope.user.userTel }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				        email：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userEmail" value="${requestScope.user.userEmail }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				       学历：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <input type="text" name="userXueli" value="${requestScope.user.userXueli }" size="22"/>
				    </td>
				</tr>
				<tr>
				    <td width="20%" class="pn-flabel pn-flabel-h">
				       简介：
				    </td>
				    <td width="80%" class="pn-fcontent">
				        <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="${sessionScope.user.userOne1}" toolbarSet="Basic">
	                    </FCK:editor>
				    </td>
				</tr>
			</table>
		</div>
   </body>
</html>

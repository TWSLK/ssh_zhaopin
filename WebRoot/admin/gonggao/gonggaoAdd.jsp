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
		
        <script type="text/javascript">
		</script>
	</head>

	<body>
		<div class="body-box">
			<form action="<%=path %>/gonggaoAdd.action" name="form1" method="post">
				     <table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h"  style="font-size: 11px;">
						        标题：
						    </td>
						    <td width="80%" class="pn-fcontent">
						       <input type="text" name="gonggaoTitle"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h" style="font-size: 11px;" style="font-size: 11px;">
						        内容：
						    </td>
						    <td width="80%" class="pn-fcontent" >
						        <FCK:editor instanceName="gonggaoContent"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
	                            </FCK:editor>
						    </td>
						</tr>
						<tr>
						    <td colspan="2" class="pn-fbutton" align="left">
						       <input type="submit" value="提交""/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						       <input type="button" value="取消" onclick="closeOpen()"/>
						    </td>
						</tr>
					 </table>
		    </form>
		</div>
   </body>
</html>

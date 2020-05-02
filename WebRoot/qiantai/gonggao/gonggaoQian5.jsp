<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	</head>

	<body>
		 <table cellSpacing=0 cellPadding=0 width="100%" border=0>
		     <s:iterator value="#request.gonggaoList" id="gonggao">
		          <tr align="center">
		              <td>
		                 <a href="<%=path %>/gonggaoDetailQian.action?gonggaoId=<s:property value="#gonggao.gonggaoId"/>" title="">
		                     <s:property value="#gonggao.gonggaoTitle"/>
		                 </a>
		              </td>
		          </tr>
		     </s:iterator>
		 </table>
	</body>
</html>

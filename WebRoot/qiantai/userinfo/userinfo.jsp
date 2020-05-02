<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <BODY>
	  <SCRIPT type="text/javascript">
	             <s:if test="#session.user.userType==1">//求职用户
                     var s="<%=path %>/auser/index.jsp";
				     window.location.href=s;
                 </s:if>
                 
                  <s:if test="#session.user.userType==2">//招聘用户
				     var s="<%=path %>/auserQiye/index.jsp";
				     window.location.href=s;
                 </s:if>
	  </SCRIPT>
  </BODY>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
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
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
		 <STYLE type=text/css>
			.ycbt
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsbt 
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsnr 
			 {
				DISPLAY: block
			 }
			.ycnr 
			 {
				DISPLAY: none
			 }
         </STYLE>
         
         <script type="text/javascript">
         </script>
  </head>
  
  <BODY>
		<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Side vAlign=top align=left width="100%" height=200>
						<TABLE>
								<TR>
									<TD class=middle align="left" colspan="2">
										    <table align="left" border="0">
										        <tr>
										             <td align="center">招聘职位:</td>
										             <td><input type="text" readonly="readonly" name="zhiwei" value="${requestScope.zhaopin.zhiwei}"/></td>
										        </tr>
										        <tr>
										             <td align="center">待遇:</td>
										             <td><input readonly="readonly"  type="text" name="daiyui" value="${requestScope.zhaopin.daiyui}"/></td>
										        </tr>
										        <tr>
										             <td align="center">学历要求:</td>
										             <td><input readonly="readonly"  type="text" name="xuliyaoqiu" value="${requestScope.zhaopin.xuliyaoqiu}"/></td>
										        </tr>
										        <tr>
										             <td align="center">工作地点:</td>
										             <td><input readonly="readonly"  type="text" name="gongzuodidian" value="${requestScope.zhaopin.gongzuodidian}"/></td>
										        </tr>
										        <tr>
										             <td align="center">工作经验:</td>
										             <td><input readonly="readonly" type="text" name="gongzuojingyan" value="${requestScope.zhaopin.gongzuojingyan}"/></td>
										        </tr>
										        <tr>
										             <td align="center">其他:</td>
										             <td>
										                 <FCK:editor instanceName="qitashuoming"  basePath="/fckeditor" width="300" height="150" value="${requestScope.zhaopin.qitashuoming}" toolbarSet="Basic">
	                                                     </FCK:editor>
                                                     </td>
										        </tr>
										    </table>
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
  </BODY>
</html>

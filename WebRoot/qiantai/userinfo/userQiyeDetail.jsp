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
										             <td align="center">企业名称:</td>
										             <td><input type="text" readonly="readonly" name="userRealname" value="${requestScope.user.userRealname}"/></td>
										        </tr>
										        <tr>
										             <td align="center">企业地址:</td>
										             <td><input readonly="readonly"  type="text" name="userAddress" value="${requestScope.user.userAddress}"/></td>
										        </tr>
										        <tr>
										             <td align="center">联系方式:</td>
										             <td><input readonly="readonly"  type="text" name="userTel" value="${requestScope.user.userTel}"/></td>
										        </tr>
										        <tr>
										             <td align="center">email:</td>
										             <td><input readonly="readonly"  type="text" name="userEmail" value="${requestScope.user.userEmail}"/></td>
										        </tr>
										        <tr>
										             <td align="center">从事行业:</td>
										             <td><input readonly="readonly" type="text" name="userOne2" value="${requestScope.user.userOne2}"/></td>
										        </tr>
										        <tr>
										             <td align="center">企业简介:</td>
										             <td>
										                 <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="${requestScope.user.userOne1}" toolbarSet="Basic">
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

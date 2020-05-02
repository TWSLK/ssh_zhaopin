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
             function check()
             {
                   if( document.form1.userName.value=="")
	               {
	                   alert("请输入用户名");
	                   return false;
		           }
	               if( document.form1.userPw.value=="")
	               {
	                   alert("请输入密码");
	                   return false;
	               }
	               return true;
             }
             
         </script>
  </head>
  
  <BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
	<div class="wrap"> 
	<%--
		<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align=left>
						<DIV class=jstime style="FLOAT: left; WIDTH: 25%">
							【<a href="userLogin.jsp">会员登录</a>】
							【<a href="userReg.jsp">免费注册</a>】
						</DIV>
						<DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
							<SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;星期'+'日一二三四五六'.charAt(new Date().getDay());",1000)</SCRIPT>
							<SPAN id=clock></SPAN>&nbsp;&nbsp;
							<A href="javascript:javascript:window.external.AddFavorite('http://localhost:8080',' ');">加入收藏</A>
							<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8080/');" href="http://localhost/">设为首页</A>
						</DIV>
					</TD>
				</TR>
		</TABLE>
		--%>
		
		<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD>
						<DIV class=ad id=banner>
							<img src="<%=path %>/images/111.jpg" border=0 width="950" height="150">
						</DIV>
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/inc.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>


		<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Side vAlign=top align=left width="100%" height=200>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="35">
										<SPAN class=TAG>求职注册</SPAN>
										<SPAN class=more style="FLOAT: right"><A href="">&nbsp;</A></SPAN>
									</TD>
								</TR>
								<TR>
									<TD class=middle align="left" colspan="2">
										<form action="<%=path %>/userReg.action" name="form1" method="post">
										    <table align="left" border="0">
										        <tr>
										             <td align="center">用户名:</td>
										             <td><input type="text" name="userName" id="userName"/></td>
										        </tr>
										        <tr>
										             <td align="center">密码:</td>
										             <td><input type="password" name="userPw"/></td>
										        </tr>
										        <tr>
										             <td align="center">真实姓名:</td>
										             <td><input type="text" name="userRealname"/></td>
										        </tr>
										        <tr>
										             <td align="center">年龄:</td>
										             <td><input type="text" name="userAge"/></td>
										        </tr>
										        <tr>
										             <td align="center">性别:</td>
										             <td><input type="text" name="userSex"/></td>
										        </tr>
										        <tr>
										             <td align="center">住址:</td>
										             <td><input type="text" name="userAddress"/></td>
										        </tr>
										        <tr>
										             <td align="center">联系方式:</td>
										             <td><input type="text" name="userTel"/></td>
										        </tr>
										        <tr>
										             <td align="center">email:</td>
										             <td><input type="text" name="userEmail"/></td>
										        </tr>
										        <tr>
										             <td align="center">学历:</td>
										             <td>
										                 <SELECT name="userXueli">
										                    <option value="小学">小学</option>
										                    <option value="初中">初中</option>
										                    <option value="高中">高中</option>
										                    <option value="专科">专科</option>
										                    <option value="本科">本科</option>
										                    <option value="硕士">硕士</option>
										                    <option value="博士">博士</option>
										                 </SELECT>
                                                     </td>
										        </tr>
										        <tr>
										             <td align="center">简介:</td>
										             <td>
										                 <FCK:editor instanceName="userOne1"  basePath="/fckeditor" width="300" height="150" value="请输入内容" toolbarSet="Basic">
	                                                     </FCK:editor>
                                                     </td>
										        </tr>
										        <tr>
										             <td colspan="2">
										                 <input type="submit" value="确定" onclick="return check()"/>
										                 <input  type="reset" value="取消"/>
										                 <font color="red"></font>
										             </td>
										        </tr>
										        <tr height="30">
										        </tr>
										    </table>
								         </form>
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		
        <!-- foot -->
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
        <!-- foot -->
    </div>
  </BODY>
</html>

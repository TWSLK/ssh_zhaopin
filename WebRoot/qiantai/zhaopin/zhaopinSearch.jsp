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
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
    <link rel="stylesheet" href="<%=path%>/css/front.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		 <STYLE type=text/css>
			.ycbt
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsbt 
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(<%=path %>/images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
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
         <script type="text/javascript" src="<%=path %>/js/public.js"></script>
         <script type="text/javascript">
            function userQiyeDetail(userId)
            {
                 var url="<%=path %>/userQiyeDetail.action?userId="+userId;
	             //alert(url);
                 var n="dd";
                 var w="400px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
            }
            function toudijianliAdd(id)
            {
                 <s:if test="#session.user==null">
                     alert("请先登录");
                 </s:if>
                 
                 <s:else>
				     var url="<%=path %>/toudijianliAdd.action?zhaopinId="+id;
		             //alert(url);
	                 var n="dd";
	                 var w="400px";
	                 var h="400px";
	                 var s="resizable:no;help:no;status:no;scroll:yes";
					 openWin(url,n,w,h,s);
                 </s:else>
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

         
        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Main vAlign=top height=60>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>职位搜索</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left">
									<TD>
									    <form action="<%=path %>/zhaopinSearch.action" method="post">
									        &nbsp;&nbsp;&nbsp;
									        <input type="text" name="zhiwei">&nbsp;&nbsp;
									        <input type="submit" value="搜索"><br>
									    </form>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
        
		<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Main vAlign=top height=100>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>职位列表</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD class=middle>
									    <table class="pn-ltable" width="100%" cellspacing="1" cellpadding="0" border="0">
											<tbody class="pn-ltbody">
											    <tr>
											       <td align="center">招聘职位</td>
											       <td align="center">待遇</td>
											       <td align="center">学历要求</td>
											       <td align="center">工作地点</td>
											       <td align="center">工作经验</td>
											       <td align="center">其他</td>
											       <td align="center">操作</td>
											    </tr>
												<s:iterator value="#request.zhaopinList" id="zhaopin">
												<tr onmouseover="Pn.LTable.lineOver(this);" onmouseout="Pn.LTable.lineOut(this);" onclick="Pn.LTable.lineSelect(this);">
													<td align="center">
														<s:property value="#zhaopin.zhiwei"/>
													</td>
													<td align="center">
														<s:property value="#zhaopin.daiyui"/>
													</td>
													<td align="center">
														<s:property value="#zhaopin.xuliyaoqiu"/>
													</td>
													<td align="center">
														<s:property value="#zhaopin.gongzuodidian"/>
													</td>
													<td align="center">
														<s:property value="#zhaopin.gongzuojingyan"/>
													</td>
													<td align="center">
														<s:property value="#zhaopin.qitashuoming"/>
													</td>
													<td class="pn-lopt">
														<a href="#" onclick="userQiyeDetail(<s:property value="#zhaopin.userId"/>)" class="pn-loperator">查看该公司</a>
													    &nbsp;&nbsp;&nbsp;&nbsp;
													    <a href="#" onclick="toudijianliAdd(<s:property value="#zhaopin.id"/>)" class="pn-loperator">投递简历</a>
													</td>
												</tr>
												</s:iterator>
											</tbody>
										</table>
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

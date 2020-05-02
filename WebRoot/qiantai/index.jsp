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
            function toupiao()
	        {
                 var toupiaoName;
				 var j=document.toupiaoForm.toupiaoName;
       			 for(i=0;i<j.length;i++)
                 {
    				if(j[i].checked==true)
   				    {
                      toupiaoName=j[i].value;
                    }
                 }
	             var url="<%=path %>/toupiaoAdd.action?toupiaoName="+toupiaoName;
	             //alert(url);
                 var n="dd";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
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
				    <TD class=Side vAlign=top align=left width="37%" height=160>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="30">
										<SPAN class=TAG>新闻资讯</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class="middle" align="left" colspan="2">
										<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0 width="100%" border=0>
												<s:iterator value="#request.newsList" id="news">
												<TR>
													<TD align="left">
														<a href="<%=path %>/newsDetailQian.action?newsId=<s:property value="#news.newsId"/>"><s:property value="#news.newsTitle"/></a>
													</TD>
													<TD align="right">
													    <s:property value="#news.newsDate"/>
													</TD>
												</TR>    
												</s:iterator>
										</TABLE>
									</TD>
								</TR>
						</TABLE>
					</TD>
					<TD class=Side vAlign=top align=right width="1%"></TD>
					<TD class=Side vAlign=top align=left width="37%" height=160>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="30">
										<SPAN class=TAG>网友投票</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class="middle" align="left" colspan="2">
										<form name="toupiaoForm" action="<%=path %>/toupiaoAdd.Action" method="post">
										<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0 width="100%" border=0>
											<TR>
												<TD>
												     你是从哪儿得知本站的？
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="pengyou" checked="checked"/>
												   &nbsp;&nbsp;&nbsp;朋友介绍
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="menhu"/>
												   &nbsp;&nbsp;&nbsp;门户网站的搜索引擎
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="googlebaidu"/>
												   &nbsp;&nbsp;&nbsp;Google或百度搜索
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="qitazhan"/>
												   &nbsp;&nbsp;&nbsp;别的网站上的链接
												   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												   <a href="#" onclick="toupiao()">投票</a>
												</TD>
											</TR>
										</TABLE>
										</form>
									</TD>
								</TR>
						</TABLE>
					</TD>
					<TD class=Side vAlign=top align=right width="1%"></TD>
					<TD class=Side vAlign=top align=right width="24%" height="160">
						<TABLE width="100%" height="150" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
								<TR>
									<TD class=head>
										<SPAN class=TAG>站内公告</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class=middle align=left>
										<!--<MARQUEE onmouseover=if(document.all!=null){this.stop()} onmouseout=if(document.all!=null){this.start()} scrollAmount=1 scrollDelay=1 direction=up height=150>-->
											<s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
										<!--</MARQUEE>-->
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		
		<!--  
		<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Main  height=111>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>最新求职会员</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD>
									    <table  cellspacing="8" cellpadding="0" >
									        <tr>
									            <s:iterator value="#request.picNewsList" id="picNews">
									            <td>
									                <a href="<%=path %>/picNewsDetailQian.action?picNewsId=<s:property value="#picNews.picNewsId"/>"><img border="0" width="111" height="111" src="<%=path %>/<s:property value="#picNews.picNewsPic"/>"/></a><br><s:property value="#picNews.picNewsTitle"/>
									            </td>   
									            </s:iterator>
									        </tr>
									    </table>
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		-->
         
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
										<SPAN class=TAG>最新职位列表</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD class=middle>
									    <s:action name="zhaopinAll" executeResult="true" flush="true"></s:action>
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

<%@ page language="java"  pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<%
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","no-store");   
  response.setHeader("Cache-Control","no-cache");   
  response.setDateHeader("Expires",0);
%>
<style type="text/css">
    body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
    .STYLE1 {font-size: 12px;color: #FFFFFF;}
    .STYLE3 {font-size: 12px;color: #033d61;}
    .STYLE5 {font-size: 14px;color: #ffffff;font-weight: bold;}
    .menu_title SPAN {FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px }
    .menu_title2 SPAN {FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px}
</style>
<script>
     var he=document.body.clientHeight-105;
     document.write("<div id=tt style=height:"+he+";overflow:hidden>");

     function MenuClick(url)
     {
        alert("ddd");
        parent.I2.parent.I2.location=url;
     }
     
     function showsubmenu(sid)
     {
		whichEl = eval("submenu" + sid);
		imgmenu = eval("imgmenu" + sid);
		if (whichEl.style.display == "none")
		{
		  eval("submenu" + sid + ".style.display=\"\";");
		  imgmenu.background="<%=path %>/images/main_47.gif";
		}
		else
		{
			eval("submenu" + sid + ".style.display=\"none\";");
			imgmenu.background="<%=path %>/images/main_48.gif";
		}
     }

	function showthdmenu(sid)
	{
		whichE2 = eval("thirdmenu" + sid+"2");
		if (whichE2.style.display == "none")
		{
			eval("thirdmenu" + sid + "1.style.display=\"\";");
			eval("thirdmenu" + sid + "2.style.display=\"\";");
			imgmenu.background="<%=path %>/images/main_47.gif";
		}
		else
		{
			eval("thirdmenu" + sid + "1.style.display=\"none\";");
			eval("thirdmenu" + sid + "2.style.display=\"none\";");
			imgmenu.background="<%=path %>/images/main_48.gif";
		}
	}


	function logout()
	{
		if (confirm("你确定要退出吗？"))
		{ 
		    window.top.location.href="logout.jsp" ;
	    } 
	}

	function MenuClick(page)
	{
	    if(page=="yhsearch")
	    {
	       top.mainFrame.I2.I2.location.href="yhsearch.do?f=1";
	    }
	    else if(page=="yhzlxg")
	    {
	       top.mainFrame.I2.I2.location.href="yhsearch.do?f=2";
	    }
	    else if(page=="list")
	    {
	       top.mainFrame.I2.I2.location.href="khlist.do";
	    }
	    else
	    {
	       top.mainFrame.I2.I2.location.href="tab\/"+page;
	    }
	}
</script>


<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
	<!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">基础信息维护</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu1" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/auserQiye/userinfo/userPw.jsp'">修改密码</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/auserQiye/userinfo/userinfo.jsp'">修改资料</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu21" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(2)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">招聘信息</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu2" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/zhaopinMyMana.action'">招聘信息列表</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/auserQiye/zhaopin/zhaopinMyAdd.jsp'">发布招聘信息</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
    <!--one -->
	<tr>
	   <td>
	       <table width="100%" border="0" cellspacing="0" cellpadding="0">
		       <tr>
			      <td height="23" background="<%=path %>/images/main_47.gif" id="imgmenu3" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(3)" onMouseOut="this.className='menu_title';" style="cursor:hand">
			          <table width="100%" border="0" cellspacing="0" cellpadding="0">
				           <tr>
				               <td width="18%">&nbsp;</td>
				               <td width="82%" class="STYLE1">职位应聘信息</td>
				           </tr>
			          </table>
			      </td>
			   </tr>
			   <tr>
	              <td background="<%=path %>/images/main_51.gif" id="submenu3" style="display: block" >
					  <table width="100%" border="0" cellspacing="0" cellpadding="0" > 
	                      <tr>
	                          <td>
				                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				                       <tr>
				                           <td width="16%" height="25">
				                               <div align="center"><img src="<%=path %>/images/left.gif" width="10" height="10" /></div>
				                           </td>
				                           <td width="84%" height="23">
				                               <table width="95%" border="0" cellspacing="0" cellpadding="0">
						                          <tr>
						                             <td height="20" style="cursor:hand;font-size: 12px;">
						                                  <a style="text-decoration: none" href="#" onclick="javascript:parent.I2.parent.I2.location='<%=path %>/zhaopinMyAll.action'">职位应聘信息</a>
						                             </td>
						                          </tr>
				                               </table>
				                           </td>
				                       </tr>
				                  </table>
	                          </td>
	                     </tr>
			             <tr>
			                  <td height="5"><img src="<%=path %>/images/main_52.gif" width="151" height="5" /></td>
			             </tr>
	                  </table>
	              </td>
	           </tr>          
	       </table>
	   </td>
	</tr>
    <!--one -->
</table>


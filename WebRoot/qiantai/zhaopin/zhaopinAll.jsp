<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

		<link rel="stylesheet" href="<%=path%>/css/front.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/admin.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		

        <script language="javascript">
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

	<body>
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
	</body>
</html>

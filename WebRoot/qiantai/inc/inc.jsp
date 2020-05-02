<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript">
         function question()
         {
                 <s:if test="#session.user==null">
                     alert("请先登录");
                 </s:if>
                 
                 <s:else>
				     var s="<%=path %>/questionAddPre.action";
				     window.location.href=s;
                 </s:else>
         }
         
         function zhongxin()
         {
                 <s:if test="#session.user==null">
                     alert("请先登录");
                 </s:if>
                 
                 <s:else>
				     var s="<%=path %>/qiantai/userinfo/userinfo.jsp";
				     window.open(s,"_blank");
                 </s:else>
         }
         
         function seach()
          {
              var s=document.getElementById("fileName").value;
              var url="<%=path %>/goujianSeach.action?fileName="+s;
              url=encodeURI(url); 
              url=encodeURI(url); 
              window.location.href=url;
          }
          
          
          function login()
          {
               document.form11.userName.value=document.getElementById("userName1").value;
               document.form11.userPw.value=document.getElementById("userPw1").value;
               if( document.form11.userName.value=="")
               {
                   alert("请输入用户名");
                   return false;
               }
               if( document.form11.userPw.value=="")
               {
                   alert("请输入密码");
                   return false;
               }
               document.form11.submit();
          }
          
          function admin()
          {
              var url="<%=path %>/login.jsp";
              window.open(url);
          }
      </script>
  </head>
  
  <body>
        <A href="<%=path %>/qiantai/index.html">首 页</A> &nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.user==null">
		      用户名：<input type="text" name="userName1" id="userName1" size="6"/>
			  密码：&nbsp;&nbsp;&nbsp;<input type="password" id="userPw1" name="userPw1" size="6"/>
			       <input class="ButtonCss" type="button" onclick="login()" value="登陆"/>&nbsp;&nbsp;
		</s:if>
		<s:else>
		     欢迎您：<s:property value="#session.user.userName"/> &nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="<%=path %>/userLogout.action">安全退出</a> &nbsp;&nbsp;&nbsp;&nbsp;
		</s:else>
		
		
		<a href="<%=path %>/qiantai/userinfo/userReg.jsp">求职注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=path %>/qiantai/userinfo/userQiyeReg.jsp">招聘注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<A href="#" onclick="zhongxin()">会员中心</A> &nbsp;&nbsp;&nbsp;&nbsp;
		<A href="<%=path %>/liuyanAll.action" target="_blank">网站论坛</A> &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" onclick="admin()">后台管理</a> &nbsp;&nbsp;&nbsp;&nbsp;
		
		
		
		<form action="<%=path %>/userLogin.action" name="form11" method="post" style="display: none;">
		    用户名：<input type="text" name="userName" size="12"/><br><br>
		    密码：&nbsp;&nbsp;&nbsp;<input type="password" name="userPw" size="14"/><br><br>
		    <input class="ButtonCss" type="submit" value="确定"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    </form>
	    
	    
  </body>
</html>

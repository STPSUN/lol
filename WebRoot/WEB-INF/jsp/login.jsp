<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("contextPath", path);
%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body onLoad="createCode();">
	<div id="main">
		<form method="post" action="${contextPath}/login"
			onsubmit="return checkForm(this)">
			<input type="hidden" name="action" value="doLogin" />
			<input type="hidden" name="ourl" value="${param['ourl'] }" />
			<table width="600px" align="center">
				<tr>
					<td>
						<fieldset>
							<legend>
								<h1>
									<font color="#38ac88">欢迎登录</font>
								</h1>
							</legend>
							<table width="500" align="center">
								<caption>
									<font color="">----------请输入账号信息----------</font>
								</caption>
								<tr>
									<td width="100" height="50" style="text-align:right">账号：</td>
									<td width="250"><input name="login account" value=""
										id="myinput" style="width:200px" type="text"
										onfocus="FocusItem(this)" onblur="CheckItem(this);" /><br />
										<span></span>
									</td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">密码：</td>
									<td><input name="psw1" style="width:200px" id="passWord"
										type="password" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br /> <span></span>
									</td>
								</tr>

								<tr>
									<td height="50" style="text-align:right">验证码：</td>
									<td><input type="text" id="input1" />
									</td>
									<td><input type="button" id="checkCode" class="code"
										style="width:60px" onClick="createCode()" /> <a href="#"
										onClick="createCode()">看不清楚</a>
									</td>
								</tr>
								<tr>
									<td></td>
									<td><input name="interest" value="1" type="checkbox"
										checked="checked">是否自动登录&nbsp;&nbsp; <input
										name="interest" type="checkbox">记住密码</td>
								</tr>
								<tr>
									<td height="80" colspan="2" align="center"><input
										type="submit" id="Button1" onClick="validate();"
										style="background-color:#38ac88;height:35px" value="确认登录" />
									</td>
								</tr>
							</table>
						</fieldset></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="js/loginadd.js"></script>
</body>
</html>
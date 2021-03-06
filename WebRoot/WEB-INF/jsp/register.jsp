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
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
</head>
<body>
	<div id="main">
		<form method="post" action="${contextPath}/login" onsubmit="return checkForm(this)">
		<input type="hidden" name="action" value="doRegister" />
			<table width="600px" align="center">
				<tr>
					<td>
						<fieldset>
							<legend>
								<h1>
									<font color="#38ac88">欢迎注册</font>
								</h1>
							</legend>
							<table width="600" align="center">
								<caption>
									<font color="" class="current">----------请输入正确填写注册信息----------</font>
								</caption>
								<tr>
									<td class="field" width="100" height="50"
										style="text-align:right">账号：</td>
									<td width="250"><input class="text" name="login account"
										id="myinput" style="width:200px" type="text"
										onfocus="FocusItem(this)" onblur="CheckItem(this);" /><br />
									<span></span>
									</td>
								</tr>
								<tr>
									<td class="field" width="100" height="50"
										style="text-align:right">姓名：</td>
									<td width="250"><input class="text" name="loginname"
										style="width:200px" type="text" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br />
									<span></span>
									</td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">性别：</td>
									<td><input name="sex" type="radio" value="男"
										checked="checked">男 <input name="sex" type="radio"
										value="女">女</td>
								</tr>
								<tr>
									<td class="field" height="50" style="text-align:right">密码：</td>
									<td><input class="text" name="psw1" style="width:200px"
										id="passWord" type="password" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br />
									<span></span>
									</td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">确认密码：</td>
									<td><input class="text" name="psw2" style="width:200px"
										type="password" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br />
									<span></span>
									</td>
								</tr>
								<!--  
								<tr>
									<td height="50" style="text-align:right">出生日期：</td>
									<td><select name="area">
											<option value="年">年</option>
											<option value="">2016</option>
											<option value="">2015</option>
											<option value="">2014</option>
											<option value="">2013</option>
											<option value="">2012</option>
											<option value="">2011</option>
											<option value="">2010</option>
											<option value="">2009</option>
											<option value="">2008</option>
											<option value="">2007</option>
											<option value="">2006</option>
											<option value="">2005</option>
											<option value="">2004</option>
											<option value="">2003</option>
											<option value="">2002</option>
											<option value="">2001</option>
											<option value="">2000</option>
											<option value="">1999</option>
											<option value="">1998</option>
											<option value="">1997</option>
											<option value="">1996</option>
											<option value="">1995</option>
											<option value="">1994</option>
											<option value="">1993</option>
											<option value="">1992</option>
									</select> <select name="area">
											<option value="月">月</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
											<option value="">6</option>
											<option value="">7</option>
											<option value="">8</option>
											<option value="">9</option>
											<option value="">10</option>
											<option value="">11</option>
											<option value="">12</option>
									</select> <select name="area">
											<option value="日">日</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
											<option value="">6</option>
											<option value="">7</option>
											<option value="">8</option>
											<option value="">9</option>
											<option value="">10</option>
											<option value="">11</option>
											<option value="">12</option>
											<option value="">13</option>
											<option value="">14</option>
											<option value="">15</option>
											<option value="">16</option>
											<option value="">17</option>
											<option value="">18</option>
											<option value="">19</option>
											<option value="">20</option>
											<option value="">21</option>
											<option value="">22</option>
											<option value="">23</option>
											<option value="">24</option>
											<option value="">25</option>
											<option value="">26</option>
											<option value="">27</option>
											<option value="">28</option>
											<option value="">29</option>
											<option value="">30</option>
											<option value="">31</option>
									</select></td>
								</tr>
								-->

								<tr>
									<td height="50" style="text-align:right" class="left">手机号码：</td>
									<td class="center" width="250"><input name="phone" id="mobile"
										type="text" style="width:200px" class="in"
										onblur="checkMobile()" />
									</td>
									<td width="250"><div id="mobile_prompt"></div>
									</td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">居住地：</td>
									<td><select name="province" id="province"
										onchange="getCity()">
											<option value="0">请选择所在省份</option>
											<option value="直辖市">直辖市</option>
											<option value="江苏省">江苏省</option>
											<option value="福建省">福建省</option>
											<option value="广东省">广东省</option>
											<option value="甘肃省">甘肃省</option>
									</select> <select id="city" name="city">
											<option value="0">请选择所在城市</option>
									</select></td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">具体地址：</td>
									<td><input style="width:200px" name="jutidizhi"
										type="text" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br />
									<span></span>
									</td>
								</tr>
								<tr>
									<td height="80" colspan="2" align="center"><input
										type="submit" style="background-color:#38ac88;height:35px"
										value="确认注册" /></td>
								</tr>
							</table>
						</fieldset></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="js/loginadd.js"></script>
	</script>
</body>
</html>

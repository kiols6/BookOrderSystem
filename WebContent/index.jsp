<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="./easyui_1.7.0/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="./easyui_1.7.0/themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="./easyui_1.7.0/themes/default/easyui.css">
<script type="text/javascript" src="./easyui_1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="./easyui_1.7.0/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./js/User.js"></script>
</head>

<body>
	<!-- 使用EasyUI-Window作为登录窗口的容器 -->
	<div id="login" class="easyui-window" style="hight:200px;width:250px;padding-top: 5px;padding-left: 5px" title="教材订购系统登录" >
		<!-- 使用table做页面布局管理 -->
		<table align="center">
		<tr>
			<td>
				<table>
					<form action="logincheckaction.action" method="post" onsubmit="return checkForm()">
						<tr><td>用户名</td><td><input id="userName" class="easyui-validatebox"  name="user.Sname" type="text"/></td><td></td></tr>
						<tr><td>密  码</td><td><input id="passWord" class="easyui-validatebox" name="user.Spassword" type="password"></td><td></td></tr>
						<tr><td>身  份</td><td><select name="user.Type"> <option value="stu">学生</option><option value="adm">管理员</option></select> </td></tr>
						<tr><td><button type="submit" class="easyui-linkbutton" onclick="checkForm()">登录</button></td>
					</form>
					<td><button  onclick="checkReg()" class="easyui-linkbutton">注册</button><font color="red">${error }</font></td></tr>
				</table>
			</td>
			</tr>
		</table>		
	</div>
</body>

</html>


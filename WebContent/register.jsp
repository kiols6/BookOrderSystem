<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head> 
<title>注册页面</title>
<!-- 引入EasyUI样式文件 -->
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/default/easyui.css">
<script type="text/javascript" src="easyui_1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="easyui_1.7.0/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./js/User.js"></script>
</head>

<body>
	
	<!-- 使用EasyUI-Window作为登录窗口的容器 -->
	<div title="教材订购系统注册" id="login" class="easyui-window" style=" width:350px;height:350px;padding-top: 5px;padding-left: 15px" >
		<form id="regForm" action="registeraction.action" method="post">
			<!-- 使用table做页面布局管理 -->
			<table align="center">
				<tr>
					<td>
						
						<!-- 使用table做页面布局管理 -->
						<table align="center">
							<tr><td>学  号</td><td><input class="easyui-validatebox" name="user.Sid" type="text"></td><td></td></tr>
							<tr><td>专业</td><td><input  class="easyui-validatebox" name="user.Major" type="text"></td><td></td></tr>
							<tr><td>用户名</td><td><input class="easyui-validatebox"  name="user.Sname" type="text"/></td><td></td></tr>
							<tr><td>密 码</td><td><input class="easyui-validatebox"  name="user.Spassword" type="password"></td><td></td></tr>
							<tr><td>手机号</td><td><input  class="easyui-validatebox" name="user.Phone" type="text"></td><td></td></tr>
							<tr><td>邮  箱</td><td><input  class="easyui-validatebox" name="user.Semail" type="text"></td><td></td></tr>
							<tr><td>身  份</td><td><select name="user.Type"> <option value="stu">学生</option></select></td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left"><button type="submit" class="easyui-linkbutton" data-options="iconCls:'icon-add'">注册</button></td>
					<td align="left"><button type="reset" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">重填</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>


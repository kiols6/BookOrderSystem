<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<!-- 引入EasyUI主文件 -->
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/icon.css">
<script type="text/javascript" src="easyui_1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="easyui_1.7.0/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./js/User.js"></script>
<meta charset="UTF-8">
<title>个人信息修改</title>
</head>

<!-- 布局选项为true,自适应浏览器窗口 -->
<body  data-options="fit:true">
	
	<!--布局使用layout布局划分4个功能区 -->
	<div id="cc" class="easyui-layout" style="width:600px;height:400px;"  data-options="fit:true">
    
    <!-- 公告栏编辑区 -->
    <div data-options="region:'north',title:'信息公告',split:true" style="height:100px;">
    </div>
    
    <!-- 菜单栏前端编辑区 -->
    <div data-options="region:'east',title:'菜单栏',split:true" style="width:200px;">
     
     <!--左侧导航栏使用手风琴菜单-->
     <div class="easyui-accordion" style="width:200px;">
        <div title="个人信息" data-options="iconCls:'icon-search'" style="overflow:auto;padding:10px;">
        	<a href="infoPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">个人信息修改</a>
        </div>
        <div title="查找与订购" data-options="iconCls:'icon-search'" style="padding:10px;">
	        <a href="shopPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-search'">选购教材</a><br><br>
	        <a href="orderSubmitPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">订单提交</a>
        </div>
        <div title="缺货申请" data-options="iconCls:'icon-search'" style="padding:10px;">
        	<a href="selloutSubmitPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">缺货信息提交</a>
        </div>
    </div>
    </div>
    
    <!-- center主功能编辑区 -->
    <div data-options="region:'center',title:'个人信息修改'"  style="padding:5px;background:#eee;">
    	<form id="chgInfoForm" action="updateaction.action" method="post">
			<!-- 使用table做页面布局管理 -->
			<table align="center">
				<tr>
					<td>
						<!-- 使用table做页面布局管理 -->
						<table align="center">
							<!--  
							<tr><td>手机号：</td><td><input  class="easyui-validatebox" value="user.Phone" name="user.Phone" type="text"></td><td></td></tr>
							<tr><td>邮箱：</td><td><input  class="easyui-validatebox" value="user.Semail" name="user.Semail" type="text"></td><td></td></tr>
							-->
							
							<tr><td>密码：</td><td><input  id="passwd" class="easyui-validatebox" name="user.Spassword" type="password"></td><td></td></tr>
							<tr><td>确认密码：</td><td><input id="checkpsd" class="easyui-validatebox" type="password"></td><td></td></tr>
					</td>
				</tr>
				<tr>
					<td align="left"><button type="submit" class="easyui-linkbutton" data-options="iconCls:'icon-save'">修改</button></td>
					<td align="left"><button type="reset" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">重填</button></td>
				</tr>
			</table>
		</form>
    </div>
    
    </div>
</body>
</html>
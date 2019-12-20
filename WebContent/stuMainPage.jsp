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
<meta charset="UTF-8">
<title>教材订购系统</title>
</head>

<!-- 布局选项为true,自适应浏览器窗口 -->
<body  data-options="fit:true">
	
	<!--布局使用layout布局划分4个功能区 -->
	<div id="cc" class="easyui-layout" style="width:600px;height:400px;"  data-options="fit:true">
    
    <!-- 公告栏编辑区 -->
    <div data-options="region:'north',title:'信息公告',split:true" style="height:100px;">
    <s:property value="#session.sname"/> 
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
    <div data-options="region:'center',title:'个人订单详情'"  style="padding:5px;background:#eee;">
    	<table class="easyui-datagrid" style="width:400px;height:250px" fit="true" data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">
		    <thead>
				<tr>
					<th data-options="field:'code',width:100">订单号</th>
					<th data-options="field:'name',width:100">书名</th>
					<th data-options="field:'price',width:100">价格</th>
					<th data-options="field:'ordertime',width:100">订购时间</th>
					<th data-options="field:'expresstime',width:100">发货时间</th>
					<th data-options="field:'expresscode',width:100">物流编号</th>
				</tr>
		    </thead>
		</table>
    </div>
    
    </div>
</body>
</html>
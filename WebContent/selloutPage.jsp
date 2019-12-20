<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<!-- 引入EasyUI主文件 -->
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/default/easyui.css">
<script type="text/javascript" src="easyui_1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="easyui_1.7.0/jquery.easyui.min.js"></script>
<title>脱销信息查询</title>
</head>

<!-- 布局选项为true,自适应浏览器窗口 -->
<body  data-options="fit:true">
	<!--布局使用layout布局划分4个功能区 -->
	<div id="cc" class="easyui-layout" style="width:600px;height:400px;"  data-options="fit:true">
    
    <!-- 公告栏编辑区  -->
    <div data-options="region:'north',title:'信息公告',split:true" style="height:100px;">
    </div>
    
    <!-- 当前状态编辑区(当前状态用于显示当前时间，登录时间，管理员用户名，登录ip) -->
    <div data-options="region:'south',title:'当前状态',split:true" style="height:100px;">
    </div>
    
    <!-- 菜单栏编辑区 -->
    <div data-options="region:'west',title:'菜单栏',split:true" style="width:200px;">
    
    <!--左侧导航栏使用手风琴菜单-->
     <div class="easyui-accordion" style="width:200px">
     <!-- 各菜单栏使用linkbutton链接到指定页面 -->
        <div title="脱销与采购" data-options="iconCls:'icon-search'" style="overflow:auto;padding:10px;">
        <a href="selloutPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-search'">脱销信息查询</a><br><br>
        <a href="purchasePage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">采购信息提交</a>
        </div>
        <div title="订单与发货" data-options="iconCls:'icon-search'" style="padding:10px;">
        <a href="orderInfoPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-search'">订单信息查询</a><br><br>
        <a href="finInfoOPPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">订单信息发布</a>
        </div>
        <div title="财务管理" data-options="iconCls:'icon-search'" style="padding:10px;">
        <a href="finInfoPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-search'">财务信息汇总</a><br><br>
        <a href="finInfoOPPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">财务报表导出</a>
        </div>
        <div title="公告信息发布" data-options="iconCls:'icon-search'" style="padding:10px;">
        <a href="admin_noticePulishPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">管理端编辑与发布公告</a><br><br>
        <a href="stu_noticePulishPage.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">学生端编辑与发布公告</a>
        </div>
        <div title="书籍管理" data-options="iconCls:'icon-search'" style="padding:10px;">
        <a href="bookInsert.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">新书增加</a><br><br>
        <a href="bookDelete.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-add'">旧书下架</a><br><br>
        </div>
    </div>
    </div>
    
    <!--center主功能编辑区-->
    <div data-options="region:'center',title:'脱销信息表'" style="padding:5px;background:#eee;">
    	<!-- 表格类采用DataGrid实现 -->
    	<table class="easyui-datagrid" style="width:400px;height:250px" fit="true" data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">
		    <thead>
				<tr>
					<th data-options="field:'code',width:100">书号</th>
					<th data-options="field:'name',width:100">书名</th>
					<th data-options="field:'price',width:100">脱销量</th>
				</tr>
		    </thead>
		</table>
    </div>
    </div>
    
    
</body>

</html>
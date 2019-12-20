<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>选购教材</title>
<!-- 引入EasyUI主文件 -->
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui_1.7.0/themes/icon.css">
<script type="text/javascript" src="easyui_1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="easyui_1.7.0/jquery.easyui.min.js"></script>
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
    <div data-options="region:'west',title:'提交购买订单',split:true" style="width:350px;">
  		<form id="regForm" action="ordergenerateaction.action" method="post">
			<!-- 使用table做页面布局管理 -->
			<table align="center">
				<tr>
					<td>
						<!-- 使用table做页面布局管理 --> 
						<table align="center">
							<tr><td>学号</td><td><input id="sid" class="easyui-validatebox"  type="text" name="order.Sid" "></td><td></td></tr>
							<tr><td>图书号</td><td><input id="bid" class="easyui-validatebox"  name="order.Bid" type="text"></td><td></td></tr>
							<tr><td>图书名</td><td><input id="bname" class="easyui-validatebox"  name="order.Bname" type="text"/></td><td></td></tr>
							<tr><td>数量</td><td><input id="bnum" class="easyui-validatebox"  name="order.Bnum" type="text"></td><td></td></tr>
							<tr><td>书本单价</td><td><input id="buprice" class="easyui-validatebox" name="order.Buprice" type="text"></td><td></td></tr>
							<tr><td>书本总价</td><td><input id="btprice" class="easyui-validatebox" name="order.Btprice" type="text"></td><td></td></tr>
							<tr><td>订单提交时间</td><td><input id="borderdate" class="easyui-validatebox" name="order.Borderdate" type="text"></td><td></td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left"><button type="submit" class="easyui-linkbutton" data-options="iconCls:'icon-add'">提交</button></td>
					<td align="left"><button type="reset" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">重填</button></td>
				</tr>
			</table>
		</form>
    </div>
    <!-- center主功能编辑区 -->
    <div data-options="region:'center',title:'选购教材'"  style="padding:5px;background:#eee;"> 
		<a id="Bt" class="easyui-linkbutton" onclick="getelement()">提交预选</a>
    	<table id= "Booktable" class="easyui-datagrid" fit="true" style="width:400px;height:250px" data-options="url:'getAllBookAction.action',loadMsg:'数据装载中......',fitColumns:true,singleSelect:true, pagination:true,frozenColumns : [ [ {field : 'ck',checkbox : true} ] ],toolbar:'#Bt'">    
		    <thead>
				<tr>
					<th data-options="field:'bid',width:100">编号</th>
					<th data-options="field:'bname',width:100">书名</th>
					<th data-options="field:'bauthor',width:100">作者</th>
					<th data-options="field:'bphouse',width:100">出版社</th>
					<th data-options="field:'buprice',width:100">图书单价</th>
				</tr>
		    </thead>
		</table>
    </div>
    </div>
</body>
<script type="text/javascript">
			function getelement(){
				var date = new Date();
				var year = date.getFullYear();
				var month = date.getMonth() + 1;
				var day = date.getDate();
				var nowDate = year + "-" + month + "-" + day;
				var rows = $('#Booktable').datagrid('getSelected')
				var num = document.getElementById("bnum").value;
				document.getElementById("bid").value = rows.bid;
				document.getElementById("bname").value = rows.bname;
				document.getElementById("buprice").value = rows.buprice;
				document.getElementById("btprice").value = rows.buprice * num;
				document.getElementById("borderdate").value = nowDate;
			}
</script>
</html>
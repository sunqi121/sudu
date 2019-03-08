<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>奖励项目管理</title>

	<!-- 引入EasyUI的样式文件-->
	<link rel="stylesheet" href="./js/easyui/themes/default/easyui.css" type="text/css" />

	<!-- 引入EasyUI的图标样式文件-->
	<link rel="stylesheet" href="./js/easyui/themes/icon.css" type="text/css" />

	<link rel="stylesheet" href="./js/common/inc.css" type="text/css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 8]>
	<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->


	<!-- 引入JQuery -->
	<script type="text/javascript" src="./js/easyui/jquery.min.js"></script>

	<!-- 引入EasyUI -->
	<script type="text/javascript" src="./js/easyui/jquery.easyui.min.js"></script>

	<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
	<script type="text/javascript" src="./js/easyui/locale/easyui-lang-zh_CN.js"></script>

</head>
<body>
<div style="margin: 20px;">
	<h2 style="margin-left: 20px;">奖励项目管理</h2>

	<div style="margin-bottom: 5px;">
		<a id="addBtn" class="btn-add easyui-linkbutton" data-options="iconCls:'icon-add'" style="width:100px;" onclick="add('+index+')">新增</a>
	</div>

	<table id="dg" class="easyui-datagrid" style="width:100%;">

	</table>

</div>


<!--新增、修改学习形式-->
<div id="addmod" style="display:none;padding:30px 60px">
	<form id="panelfrom" action="" method="post">
		<div style="margin-bottom:20px">
			<span>请设置学习形式编号:</span>
			<br />
			<input id="jlxmId" class="easyui-textbox" data-options="prompt:' ',validType:'password'" style="width:100%;height:32px">
			<br /><br />
			<span>请设置学习形式名称:</span>
			<br />
			<input id="jlxmName" class="easyui-textbox" data-options="prompt:' ',validType:'password'" style="width:100%;height:32px">
			<br /><br />
			<span style="margin-right: 20px">请设置状态:</span>
			启用<input style="margin-right: 20px" type="radio" name="stateRadio" value="1" />
			禁用<input type="radio" name="stateRadio" value="0"/>
		</div>
		<div id="btnAdd">
			<center>
				<input id="sureAdd" class="btn-cancel" type="button" value="提交">
				<input id="cancelAdd" class="btn-cancel" type="button" value="取消">
			</center>
		</div>
		<div id="btnMod" style="display: none">
			<center>
				<input id="sureMod" class="btn-cancel" type="button" value="提交">
				<input id="cancelMod" class="btn-cancel" type="button" value="取消">
			</center>
		</div>
</div>
</form>
</div>

</form>
</div>

</body>
<script>

    $(function() {
        // 初始化操作如：表格，按钮，监听绑定
        initTable();
        /* initCombox(); */
        //初始加载，表格宽度自适应
        /* $(document).ready(function(){
            fitCoulms();
        }); */
        //浏览器窗口大小变化后，表格宽度自适应
        $(window).resize(function(){
            fitCoulms();
        });
    });

    //表格宽度自适应，这里的#dg是datagrid表格生成的div标签
    function fitCoulms(){
        $('#dg').datagrid({
            fitColumns:true
        });
    }
    // 操作处理栏
    function formatOper(val,row,index){
        var editMenu = '<a  class="update easyui-linkbutton" onclick="mod(\''+row.menuId+'\')">修改</a>';
        var delMenu = '<a  class="delete easyui-linkbutton" onclick="del('+index+')">删除</a>';

        return editMenu + delMenu;
    }

    function initTable() {
        $('#dg').datagrid({
            url:'${pageContext.request.contextPath}/xfzhgl/findJlxm',
            method:'get',
            nowrap:false,//换行
            striped : true,// 斑马线效果
            singleSelect : true,
            pagination : true, //底部显示分页工具栏。
            rownumbers : true, //显示一个行号列。
            pageNumber : 1, //第几页显示（默认第一页，可以省略）
            pageSize : 15, //分页大小
            pageList : [5,10,15,20,25,30],//设置分页属性的时候 初始化页面大小选择列表。

            //remoteSort : false,
            columns : [ [
                {field : 'jlxmGuid', title : 'Guid', align : 'center', width : '0%',hidden : true },
                {field : 'jlxmId', title : '奖励项目编号',align : 'center',width : '15%'},
				{field : 'jlxmName',title : '奖励项目名称',align : 'center',width : '25%'},
				{field : 'jlxmCtime', title : '创建时间',align : 'center', width : '20%'},
				{field : 'jlxmState',title : '状态',align : 'center',
                    width : '15%',formatter :function(value, row, index){
                        return value == "1" ?  "启用":"禁用";
                    }
                },
				{ field : 'set',title : '操作', align : 'center', width : '25%',formatter : formatOper}
                ] ]
        });
    }

    /*$('#dg').datagrid('selectRow');// 关键在这里*/

    //删除窗口
    function del(index){
       /* $('#dg').datagrid('selectRow');*/// 关键在这里
        var row = $('#dg').datagrid('getSelected');
       /* console.log(row.jlxmGuid);*/
        if (row){
            $.messager.confirm('确认窗口', '您确定要删除吗？删除将不可恢复!!', function(r){
                if (r){

                    $.ajax({
                        datatype: "json",
                        contentType: "application/json",
                        url:"<%=basePath%>/xfzhgl/delJlxm",
                        data:{
                            jlxmGuid:row.jlxmGuid
                        },
                        success: function(req) {
                            $('#dg').datagrid('reload');
                            alert("删除成功");
                            //请求成功时处理
                        },
                        error: function() {
                            alert("删除失败");
                            //请求出错处理
                        }
                    });

                }
            });
        }
    }


    /*新增奖励项目*/
    $('#sureAdd').click(function() {

        var data = {
            jlxmId: $('#jlxmId').val(),
            jlxmName: $('#jlxmName').val(),
            jlxmState:$("input[name='stateRadio']:checked").val(),

        };
        console.log(data.jlxmId);
        console.log(data.jlxmName);
        console.log(data.jlxmState);

        if( data.jlxmId==''){
            alert("编号不能为空！");
            return false;
        }else if( data.jlxmName==''){
            alert("名称不能为空！");
            return false;
        }else{
            $.ajax({
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify(data),
                url: "<%=basePath%>/xfzhgl/insertJlxm",
                success: function (data){
                    /* resetBox();*/
                    location.reload();
                    alert("新增成功");
                },
                error: function() {
                    alert("新增失败");
                    //请求出错
                }
            });
        }
        return $('#addmod').window("close");
    });
    $('#cancelAdd').click(function() {
        return $('#addmod').window("close");
    });
    function add(index){
        $("#btnMod").css('display','none');
        $("#btnMod").css('display','none');
        $("#btnAdd").css('display','block');
        $("#btnAdd").css('display','block');
        $('#addmod').window({
            width : 450,
            height : 350,
            title : '新增奖励项目',	//窗口标题文本
            collapsible : false,	//定义是否显示可折叠按钮。
            minimizable : false,	//是否显示最小化窗口
            maximizable : false,	//是否显示最大化窗口
            closable : false,		//是否显示关闭按钮。
            closed : false,			//定义是否可以关闭窗口。
            draggable : false,		//定义是否能够拖拽窗口。
            resizable : false,		//定义是否能够改变窗口大小。
            shadow : true,			//窗体显示的时候显示阴影。
            inline : false,			//显示在最上层
            modal : true, 			//模式化窗口
            border : true,			//定义窗体边框的样式。可用值：true，false，'thin'，'thick'。（该方法自1.4.5版开始可用）
            constrain : false		//定义是否限制窗体的位置。（该方法自1.5版开始可用）
        });
    }


    /*修改奖励项目*/
    $('#sureMod').click(function() {

        $('#jlxmId').val(row.jlxmId);
        $('#jlxmName').val(row.jlxmName);
        $("input[name='stateRadio']:checked").val(row.jlxmState);
        var data = {
            jlxmId: $('#jlxmId').val(),
            jlxmName: $('#jlxmName').val(),
            jlxmState:$("input[name='stateRadio']:checked").val(),

        };
        console.log(data.jlxmId);
        console.log(data.jlxmName);
        console.log(data.jlxmState);

        if( data.jlxmId==''){
            alert("编号不能为空！");
            return false;
        }else if( data.jlxmName==''){
            alert("名称不能为空！");
            return false;
        }else{
            $.ajax({
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify(data),
                url: "<%=basePath%>/xfzhgl/updateJlxm",
                success: function (data) {
                    /* resetBox();*/
                    location.reload();
                    alert("修改成功");
                },
                error: function() {
                    alert("修改失败");
                    //请求出错
                }
            });
        }
        return $('#addmod').window("close");
    });
    $('#cancelMod').click(function() {
        return $('#addmod').window("close");
    });
    function mod(index){
        $("#btnAdd").css('display','none');
        $("#btnAdd").css('display','none');
        $("#btnMod").css('display','block');
        $("#btnMod").css('display','block');


        $('#addmod').window({
            width : 450,
            height : 350,
            title : '修改奖励项目',	//窗口标题文本
            collapsible : false,	//定义是否显示可折叠按钮。
            minimizable : false,	//是否显示最小化窗口
            maximizable : false,	//是否显示最大化窗口
            closable : false,		//是否显示关闭按钮。
            closed : false,			//定义是否可以关闭窗口。
            draggable : false,		//定义是否能够拖拽窗口。
            resizable : false,		//定义是否能够改变窗口大小。
            shadow : true,			//窗体显示的时候显示阴影。
            inline : false,			//显示在最上层
            modal : true, 			//模式化窗口
            border : true,			//定义窗体边框的样式。可用值：true，false，'thin'，'thick'。（该方法自1.4.5版开始可用）
            constrain : false		//定义是否限制窗体的位置。（该方法自1.5版开始可用）
        });

    }



</script>
</html>

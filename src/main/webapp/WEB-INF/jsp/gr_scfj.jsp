<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>上传附件</title>
    <jsp:include page="/js/common/inc_easy.jsp"></jsp:include>

    <style type="text/css">
        table {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        body {
            padding: 0;
            margin: 0;
            border: 0;
            min-width: 1050px;
            box-sizing: border-box;
            font-size: 10px;
        }

        .gzdbgjz {
            text-align: center;

        }

        .gzdbgzdq {
            text-align: left;
        }

        .tb_css {
            /*border:1px solid #bfdfff;*/
            border-collapse: collapse;
            width: 90%;
            margin: auto;
            background-color: #fff;
            margin-top: 20px;
            /* padding: 20px;
             display:block;*/
        }

        tr .mytext:first-child {
            border-left: none;
        }

        .context {

            width: 20%;
            height: 30px;
        }

        .mytext {

            width: 10%;
            height: 30px;

        }

        .middle-button {
            margin-left: 20px;
        }
    </style>

    <script type="text/javascript">

        //设置text需要验证
        $('input[type=text]').validatebox();

        var firstValue;
        var rylbName;
        $(document).ready(function () {
            var dateUrl = "<%=basePath%>box/getrb.action";

            $('#first').combotree({
                url: dateUrl,
                dataType: "JSON",
                type: "GET",
                /*连线*/
                lines: true,
                /*动画效果*/
                animate: true,
                onHidePanel: function () {
                    $("#second").combobox("setValue", '');
                    $("#third").combobox("setValue", '');
                    //var firstValue = String($("#first").combotree("getValues"));
                    //var text = $("#first").combotree("getText");

                    firstValue = $('#first').combotree('tree').tree('getSelected').id;
                    rylbName = $('#first').combotree('tree').tree('getSelected').text;

                    sendAjax(firstValue);
                }

            });

            //获取当前combotree的tree对象
            //var tree = $('#first').combotree('tree');
            //alert(tree);
            //alert(data);
            //设置设备类型下拉树的值
            /* $('#first').combotree('setValue', data.id);
             */
            $('#second').combobox({
                //url:'tree_data2.json',
                editable: false, //不可编辑状态
                cache: false,
                panelHeight: '200',//自动高度适合
                valueField: "id",
                textField: "text",

                onHidePanel: function () {

                }
            });

            $('#third').combobox({
                //url:'tree_data2.json',
                editable: false, //不可编辑状态
                cache: false,
                panelHeight: '200',//自动高度适合
                valueField: "id",
                textField: "text",

                onHidePanel: function () {

                }
            });


            //分期编号
            $('#fqbh').combobox({
                url: "<%=basePath%>box/ksfq.action",
                editable: false, //不可编辑状态
                cache: false,
                panelHeight: '150',
                valueField: 'fqbh',
                textField: 'fqname',

                onHidePanel: function () {

                }
            });

            $('#fifth').combobox({
                url: "<%=basePath%>box/fqzd.action?zdtype=1",
                editable: false, //不可编辑状态
                cache: false,
                panelHeight: '150',
                valueField: 'zdbh',
                textField: 'zdvalue',

                onHidePanel: function () {

                }
            });

            $('#sixth').combotree({
                url: "<%=basePath%>menu/findMenu.action",
                dataType: "JSON",
                type: "GET",
                /*连线*/
                lines: true,
                /*动画效果*/
                animate: true,

                onHidePanel: function () {

                }
            });
        });

        function doSearch() {
            var child = window.open("rylbtree.jsp", "人员类别", "height=200,width=400,status=no,toolbar=no,location=no,menubar=no");
        }

        function sendAjax(firstValue) {
//$('#first').combotree('setValue',firstValue);

            $.ajax({
                type: "GET",
                url: "<%=basePath%>box/getsd.action",
                //url : "http://localhost:8080/ssm/ws/getcy.action",
                cache: false,
                dataType: "json",
                data: {
                    "firstValue": firstValue
                },

                success: function (data) {

                    $("#second").combobox("loadData", data);
                    $("#third").combobox("loadData", data);

                }
            });
        }
    </script>

</head>
<body style="background-color: #fff;text-align:center; margin-left:auto; margin-right:auto;">
<center>
    <div style="overflow:hidden;">
        <p class="title_name" style="text-align: left">上传附件</p>
        <div style="width: 90%">
            <a id="batchDel" class="easyui-linkbutton "
               style="float: left;text-align: center; font-size: 8px;width:70px;height:20px;margin:5px">批量删除</a>
        </div>
        <table id="statisticsTable" style="float: none;width:90%;font-size: 10px;overflow:hidden;margin-top: 20px;">
            <!-- 查询表格 -->
        </table>
        <br>
        <table class="tb_css" style="width:90%;margin: 0 auto">
            <tr>
                <td colspan="7" class="table_title">上传扫描件</td>
            </tr>
            <tr style=" margin-top: 20px;">
                <td class="context">
                    扫描件类型
                </td>
                <td class="mytextt" style=" text-align:left;">
                    <select id="smjlx" class="easyui-combobox"
                            style="width: 200px;height: 35px;float: left;  text-align:left;"></select>
                    要求：1.扫描件要以jpg格式 2.扫描件大小要小于200K以下
                </td>
            </tr>
            <tr style=" margin-top: 20px;">
                <td class="context">
                    扫描件
                </td>
                <td class="mytextt" style=" text-align:left;">
                    <img id="imageBrowse" src="../../images/tx.png"
                         style="height:100px;width:125px;border-width:0px;">
                    <br>
                    <input type="file" name="fuPhoto" onchange="selectImage(this);" id="fileInp"
                           accept="image/*">
                </td>
            </tr>
            <tr>
                <td colspan="7" class="table_title">
                    <a id="addnfcx" class="easyui-linkbutton " style="width:120px;margin-left:10px"
                       onclick="uploadImage()">保存</a>
                </td>
            </tr>
        </table>
        <%--<img style="width: 34px;height: 30px;" id="image" src=""/>
        <br/>
        <input type="file" onchange="selectImage(this);"/>
        <br/>
        <input type="button" onclick="uploadImage();" value="提交"/>--%>
    </div>
</center>
</body>

<script type="text/javascript">
    getAttaType();
    var imageBrowse = '';
    var fileName = '';

    function selectImage(file) {
        if (!file.files || !file.files[0]) {
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            document.getElementById('imageBrowse').src = evt.target.result;
            imageBrowse = evt.target.result;
        }
        fileName = file.files[0].name;
        reader.readAsDataURL(file.files[0]);
    };


    function uploadImage() {
        image = JSON.stringify(imageBrowse)
        var attachmentType = $("#smjlx").combobox('getValue');
        if (fileName.length > 50) {
            $.messager.alert('操作结果', '图片名称超过三十个字符，请重命名');
            return;
        }
        $.ajax({
            type: 'POST',
            url: '<%=basePath%>/uploadAttachment/addUploadAttachment',
            data: {
                base64: image,
                fileName: fileName,
                attachmentType: attachmentType
            },
            async: false,
            dataType: 'json',
            success: function (data) {
                if (data.code == "100") {
                    $.messager.show({
                        title: '操作结果',
                        msg: data.msg,
                        timeout: 3000,// 3s
                        showType: 'slide'
                    });
                    resetTable();
                    $('#statisticsTable').datagrid('reload');// 重新载入当前页面数据
                } else if (data.code == "200") {
                    $.messager.show({
                        title: '操作结果',
                        msg: data.msg,
                        timeout: 3000,// 3s
                        showType: 'slide'
                    });
                    resetTable();
                } else if (data.code == "300") {
                    $.messager.alert('操作结果', data.msg);
                    resetTable();
                }
            },
            error: function (err) {
                alert('网络故障');
            }
        });
    };
    // -------以上部分是上传附件的代码-------------------------------------

    //附件类型下拉框
    function getAttaType() {
        $('#smjlx').combobox({
            url: '<%=basePath%>/uploadAttachment/getAttaType',
            valueField: "id",
            textField: "text",
            //获取默认的值
            onLoadSuccess: function () {
                $('#smjlx').combobox('setValue', '==请选择==');
            }
        });
    };

    //初始化
    $(function () {
        // 初始化操作如：表格，按钮，监听绑定
        initTable();
        dataInitsbqk()
    });
    var sbpcbh="${grxx.sbpcbh}";
    var sbpcbh="${grxx.sbpcbh}";
    var dqpcbh="${sbpcxx.sbpcbh}";
    var sbqk="${grxx.sbqk}";
    function dataInitsbqk(){
        if(sbpcbh.toLowerCase()==dqpcbh.toLowerCase()){
            if(sbqk.toLowerCase()!="0".toLowerCase()){
                $(".jyan").removeAttr('onclick');
                $(".jysx").datebox({disabled: true});
                $("select").combobox({disabled:true});
                $("input").attr("disabled","disabled");
                $("a").attr("disabled","disabled");
            }
        }

    }
    //网格
    function initTable() {
        $('#statisticsTable').datagrid({
            url: '<%=basePath%>/uploadAttachment/findBasicInformationAttaPage',
            fitColumns: true,//宽度自适应
            nowrap: false,//换行
            striped: true,// 斑马线效果
            singleSelect: false,//单选开关
            pagination: true, //底部显示分页工具栏。
            rownumbers: false, //显示一个行号列。
            pageNumber: 1, //第几页显示（默认第一页，可以省略）
            pageSize: 3, //分页大小
            pageList: [3, 10, 15, 20, 25, 30],//设置分页属性的时候 初始化页面大小选择列表
            //remoteSort : false,
            columns: [[
                {
                    field: 'biaId',
                    title: 'id',
                    align: 'center',
                    width: 50,
                    hidden: true
                }, {
                    field: 'gx',
                    title: '勾选',
                    align: 'center',
                    width: 10,
                    checkbox: true,
                }, {
                    field: 'sblbName',
                    title: '扫描件类型',
                    align: 'center',
                    // formatter: checkType,
                    width: '39%',

                }, {
                    field: 'biaAttachmentBlob',
                    title: '预览',
                    width: '30%',
                    align: 'center',
                    formatter: formatOper,
                }, {
                    field: 'cz',
                    title: '操作',
                    width: '30%',
                    align: 'center',
                    formatter: formatOper2,
                }]]
        });
    }

    // 删除
    function formatOper2(val, row, index) {
        var scfjdelete = '<a href="javascript:void(0)" class="update easyui-linkbutton" onclick="fjdelete(' + index + ')">删除</a>';
        if(dqpcbh.toLowerCase()==sbpcbh.toLowerCase()){
            if(sbqk.toLowerCase()!="0".toLowerCase()){
                return
            }
        }
        return scfjdelete;

    }

    // 删除
    function fjdelete(index) {
        $('#statisticsTable').datagrid('selectRow', index);// 关键在这里
        var row = $('#statisticsTable').datagrid('getSelected');
        var biaId = row.biaId;
        if (row) {
            $.messager.confirm('确认对话框', '您确定要删除吗？删除将不可恢复!!', function (r) {
                if (r) {
                    submitAjax("post", "<%=basePath%>/uploadAttachment/delBasicInformationAtta", row);
                    $('#statisticsTable').datagrid('reload');// 重新载入当前页面数据
                }
            });
        }
    };

    // 删除多个简历
    $("#batchDel").click(function () {
        var data = $("#statisticsTable").datagrid('getSelections');
        var idArr = [];
        for (var i in data) {
            idArr.push(data[i].biaId);
        }
        var idArray = JSON.stringify(idArr);
        if (data.length > 0) {
            $.messager.confirm('确认对话框', '您确定要删除吗？删除将不可恢复!!', function (r) {
                if (r) {
                    $.ajax({
                        url: "<%=basePath%>/uploadAttachment/batchDelBasicInformationAttas",
                        type: "post",
                        data: {
                            idArray: idArray
                        },
                        dataType: "json",
                        success: function (data) {
                            if (data.code == "100") {
                                $.messager.show({
                                    title: '操作结果',
                                    msg: data.msg,
                                    timeout: 3000,// 3s
                                    showType: 'slide'
                                });
                            }
                            $('#statisticsTable').datagrid('reload');// 重新载入当前页面数据
                        }
                    });
                }
            });
        } else {
            $.messager.alert('操作结果', "请选择要删除的简历");
        }
    });

    // 表单 Ajax
    function submitAjax(type, url, data) {
        $.ajax({
            type: type,
            url: url,
            data: data,
            // dataType : 'json', // 可选。规定预期的服务器响应的数据类型。默认执行智能判断（xml、json、script 或 html）。
            // contentType:'application/json;charset=UTF-8', //contentType很重要，发送信息至服务器时内容编码类型。
            success: function (data, textStatus) {
                if (data.code == "100") {
                    $.messager.show({
                        title: '操作结果',
                        msg: data.msg,
                        timeout: 3000,// 3s
                        showType: 'slide'
                    });

                    $('#statisticsTable').datagrid('reload');// 重新载入当前页面数据
                } else if (data.code == "200") {
                    $.messager.alert('警告', data.msg);
                }
            },
        });
    };

    // 预览
    function formatOper(val, row, index) {
        var fjsee = '<a href="javascript:void(0)" class="update easyui-linkbutton" onclick="fjsee(' + index + ')">预览</a>';
        return fjsee;
    }

    function fjsee(index) {
        $('#statisticsTable').datagrid('selectRow', index);// 关键在这里
        var row = $('#statisticsTable').datagrid('getSelected');
        window.open('<%=basePath%>/uploadAttachment/getImg?biaId=' + row.biaId, '图片预览', 'height=400,width=300,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
    }

    //重置
    function resetTable() {
        $('#smjlx').combobox('setValue', '==请选择==');
        $("#imageBrowse").attr("src", "../../images/zwtp.jpg");
        var file = $('#fileInp');
        file.after(file.clone().val(""));
        // imageBrowse = '';
        file.remove();
    }


</script>
</html>

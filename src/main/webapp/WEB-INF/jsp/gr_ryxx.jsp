<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>人员详情</title>
    <jsp:include page="/js/common/inc_easy.jsp"></jsp:include>

    <style type="text/css">
        body {
            background-color: #FFFFFF;
            min-width: 1050px;
            padding: 0;
            margin: 0;
            border: 0;
            box-sizing: border-box;
            font-size: 10px;
        }

        .tb_css {
            margin-top: 0px;

        }

        .tb_css .table_title {
            background-color: #d6e4f2;
        }

        .xltablean{
            color: #fff;
            background: #4aa1fa;
            width: 50px;
            text-decoration: none;
            display: inline-block;
            overflow: hidden;
            border-radius:5px;
        }

        .select_block .tb_css {
            width: 100%;
        }


        .dist select {
            height: 25px;
            font-size: 14px;
        }
        table{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
    </style>

</head>
<body align="center">

<div style="width:100%;"  >
    <h2 align="center">人员详情</h2>
    <form action="" id="secform">
        <%--申报信息--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="5" class="table_title">请选择</td>
            </tr>

            <tr>
                <td width="15%" class="mytext">申报类别</td>
                <td width="30%" class="context">
                    <select id="sblb" name="sblb" class="easyui-combobox"  style="width:100%">
                        <c:if test="${grxx.sblb }!=null">
                            <option value="${grxx.sblb }">${grxx.sblb }</option>
                        </c:if>
                    </select>
                </td>

                <td width="15%" class="mytext">申报专业</td>
                <td width="30%" class="context" colspan="2">
                    <select id="sbzy" name="sbzy" class="easyui-combobox"style="width:100%">
                        <c:if test="${grxx.sbzy }!=null">
                            <option value="${grxx.sbzy }">${grxx.sbzy }</option>
                        </c:if>
                    </select>
                </td>
            <tr>
                <td width="15%" class="mytext">委托机构</td>
                <td width="30%" class="context" >
                    <select id="wtjg" name="wtjg" class="easyui-combobox" style="width:100%">
                        <c:if test="${grxx.sbdj }!=null">
                            <option value="${grxx.sbdj }">${grxx.sbdj }</option>
                        </c:if>
                        <option value="福州市职改办">福州市职改办</option>
                        <option value="厦门市职改办">厦门市职改办</option>
                        <option value="漳州市职改办">漳州市职改办</option>
                        <option value="泉州市职改办">泉州市职改办</option>
                        <option value="莆田市职改办">莆田市职改办</option>
                        <option value="三明市职改办">三明市职改办</option>
                        <option value="南平市职改办">南平市职改办</option>
                        <option value="龙岩市职改办">龙岩市职改办</option>
                        <option value="宁德市职改办">宁德市职改办</option>
                        <option value="平潭综合实验区职改办">平潭综合实验区职改办</option>
                        <option value="省交通厅">省交通厅</option>
                        <option value="省人民政府机关事务管理局">省人民政府机关事务管理局</option>
                        <option value="省国土资源厅">省国土资源厅</option>
                        <option value="团省委">团省委</option>
                        <option value="省海洋与渔业厅">省海洋与渔业厅</option>
                        <option value="省环保厅">省环保厅</option>
                        <option value="省经贸委">省经贸委</option>
                        <option value="省住建厅">省住建厅</option>
                        <option value="省林业厅">省林业厅</option>
                        <option value="省水业厅">省水业厅</option>
                        <option value="省农建厅">省农建厅</option>
                        <option value="省财政厅">省财政厅</option>
                        <option value="省教育厅">省教育厅</option>
                        <option value="省卫生厅">省卫生厅</option>
                        <option value="省政府六办">省政府六办</option>
                        <option value="省药监局">省药监局</option>
                        <option value="省地矿局">省地矿局</option>
                        <option value="省煤田地质局">省煤田地质局</option>
                        <option value="省监狱管理局">省监狱管理局</option>
                        <option value="中国海峡人才市场">中国海峡人才市场</option>
                        <option value="中国水利水电闽江工程局">中国水利水电闽江工程局</option>
                        <option value="福州大学">福州大学</option>
                        <option value="福建农林大学">福建农林大学</option>
                        <option value="福建师范大学">福建师范大学</option>
                        <option value="福建工程学院">福建工程学院</option>
                        <option value="华侨大学">华侨大学</option>
                        <option value="福建建工集团总公司">福建建工集团总公司</option>
                        <option value="省石化集团公司">省石化集团公司</option>
                        <option value="省能源集团公司">省能源集团公司</option>
                        <option value="省投资开发集团公司">省投资开发集团公司</option>
                        <option value="省轻纺(控股)公司">省轻纺(控股)公司</option>
                        <option value="省冶金(控股)公司">省冶金(控股)公司</option>
                        <option value="省机电(控股)公司">省机电(控股)公司</option>
                        <option value="福建建工集团总公司(人才中心)">福建建工集团总公司(人才中心)</option>
                    </select>
                </td>

                <td width="15%" class="mytext">申报等级</td>
                <td width="30%" class="context" colspan="2">
                    <select id="sbdj" name="sbdj" class="easyui-combobox" style="width:100%">
                        <c:if test="${grxx.sbzy }!=null">
                            <option value="${grxx.sbzy }">${grxx.sbzy }</option>
                        </c:if>
                        <option value="0">请选择</option>
                        <option value="1">助理工程师</option>
                        <option value="2">工程师</option>
                        <option value="3">高级工程师</option>
                    </select>
                </td>
            </tr>
            </tr>
        </table>
        <%--基本信息--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="5" class="table_title" >基本情况</td>
            </tr>
            <tr>
                <td width="15%" class="mytext">姓&nbsp;&nbsp;名</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.name!=null}">
                        <input id="name" name="name" value="${grxx.name}" style="width:100%" disabled>
                    </c:if>
                    <c:if test="${grxx.name==null}">
                        <input id="name" name="name"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">曾用名</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.onceName!=null}">
                        <input  id="onceName" value="${grxx.onceName}" name="onceName" style="width:100%;">
                    </c:if>
                    <c:if test="${grxx.onceName==null}">
                        <input  id="onceName"  name="onceName" style="width:100%;">
                    </c:if>
                </td>
                <td width="15%" rowspan="4" class="context" colspan="2">
                    <label>

                        <img width="120" height="150"  id="prevView" style="padding:5px 5px;"
                             src="<%=basePath%>personalWeb/myInformation/informationMaintain/findPhotoByPersonGuid?personGuid=${personlogin.person_guid}">
                        <input type="button" id="jbxxzpsc" style="display:none"/>

                  </label>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">性&nbsp;&nbsp;别</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.sex!=null}">
                        <input id="sex" value="${grxx.sex}" name="sex" style="width:100%" disabled>
                    </c:if>
                    <c:if test="${grxx.sex==null}">
                        <input id="sex"  name="sex" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext"> 民&nbsp;&nbsp;族</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.nation==null}">
                        <input id="nation"  name="nation"  style="width:100%"  >
                    </c:if>
                    <c:if test="${grxx.nation!=null}">
                        <input id="nation" value="${grxx.nation}" name="nation"  style="width:100%"  >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">出生日期</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.birthDate!=null}">
                        <input id="birthDate"  value="${grxx.birthDate}" name="birthDate" style="width:100%" disabled>
                    </c:if>
                    <c:if test="${grxx.birthDate==null}">
                        <input id="birthDate"  name="birthDate" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">出生地</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.birthPlace!=null}">
                        <input  id="birthPlace" value="${grxx.birthPlace}" name="birthPlace" style="width:100%;" >
                    </c:if>
                    <c:if test="${grxx.birthPlace==null}">
                        <input  id="birthPlace"  name="birthPlace" style="width:100%;" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="20%" class="mytext">身份证号码</td>
                <td class="context" >
                    <c:if test="${grxx.sfzhm!=null}">
                        <input  id="sfzhm" name="sfzhm" value="${grxx.sfzhm}" style="width:100%;" disabled>
                    </c:if>
                    <c:if test="${grxx.sfzhm==null}">
                        <input  id="sfzhm" name="sfzhm"  style="width:100%;" >
                    </c:if>
                </td>
                <td width="20%" class="mytext">身体状况</td>
                <td class="context" >
                    <c:if test="${grxx.stzk!=null}">
                    <input  id="stzk" name="stzk" value="${grxx.stzk}" style="width:100%;" >
                </c:if>
                    <c:if test="${grxx.stzk==null}">
                        <input  id="stzk" name="stzk"  style="width:100%;" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">联系电话</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.contactNumber!=null}">
                        <input   id="contactNumber" name="contactNumber" value="${grxx.contactNumber}" style="width:100%;" >
                    </c:if>
                    <c:if test="${grxx.contactNumber==null}">
                        <input   id="contactNumber" name="contactNumber"  style="width:100%;" >
                    </c:if>
                </td>
                <td width="15%" class="mytext"> 手机号码</td>
                <td width="20%" class="context" colspan="3">
                    <c:if test="${grxx.personalNumber!=null}">
                        <input  id="personalNumber" value="${grxx.personalNumber}" name="personalNumber" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.personalNumber==null}">
                        <input  id="personalNumber" name="personalNumber" style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td  width="15%" class="mytext">标准工资</td>
                <td  width="20%"  class="context">
                    <c:if test="${grxx.wages!=null}">
                        <input  id="wages"  value="${grxx.wages}" name="wages"  style="width:100%;" >
                    </c:if>
                    <c:if test="${grxx.wages==null}">
                        <input  id="wages"   name="wages"  style="width:100%;" >
                    </c:if>
                </td>
                <td width="15%" class="mytext"> 邮政编码</td>
                <td width="20%" class="context" colspan="3">
                    <c:if test="${grxx.postalCode!=null}">
                    <input  id="postalCode" value="${grxx.postalCode}" name="postalCode" style="width:100%" >
                </c:if>
                    <c:if test="${grxx.postalCode==null}">
                        <input  id="postalCode"  name="postalCode" style="width:100%" >
                    </c:if>
                </td>

            </tr>
            <tr>
                <td  width="15%" class="mytext">人事档案存放单位</td>
                <td  width="20%" colspan="5" class="context">
                    <c:if test="${grxx.rsdacfdw!=null}">
                        <input id="rsdacfdw" value="${grxx.rsdacfdw}" name="rsdacfdw"  style="width:100%;" >
                    </c:if>
                    <c:if test="${grxx.rsdacfdw==null}">
                        <input id="rsdacfdw"  name="rsdacfdw"  style="width:100%;" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td  width="15%" class="mytext">材料回寄地址位</td>
                <td  width="20%" colspan="5" class="context">
                    <c:if test="${grxx.clhjdz!=null}">
                        <input   id="clhjdz" value="${grxx.clhjdz}" name="clhjdz"  style="width:100%;" ><br/>
                    </c:if>
                    <c:if test="${grxx.clhjdz==null}">
                        <input   id="clhjdz"  name="clhjdz"  style="width:100%;" ><br/>
                    </c:if>
                    <span style="color: red">请认真核对地址，默认收件人为本人，若收件人为他人，应写明收件人和收件人联系电话。</span>
                </td>
            </tr>
        </table>
        <!-- 新增学历 -->
        <div id="xlxxwin" style="display:none;">
                <table style="border-collapse:separate; border-spacing:40px;">
                    <tr >
                        <td>毕业学校:</td>
                        <td>
                            <input type="text" id="xlxx" style="height: 30px;width: 160px" name="graduateSchool">
                        </td>

                        <td>毕业专业:</td>
                        <td><input type="text" id="xlzy" style="height: 30px;width: 160px" name="major"></td>
                    </tr>
                    <tr >
                        <td>学历:</td>
                        <td>
                            <select name="education" id="xlxl" class="easyui-combobox"  style="height: 30px;width: 160px">
                                <option value="中专">中专</option>
                                <option value="大专">大专</option>
                                <option value="本科">本科</option>
                                <option value="双学士">双学士</option>
                                <option value="硕士">硕士</option>
                                <option value="博士">博士</option>

                            </select>
                        </td>

                        <td>学制:</td>
                        <td><select name="schoolSystem" id="xlxz" class="easyui-combobox"  style="height: 30px;width: 160px">
                            <option value="1">1年</option>
                            <option value="2">2年</option>
                            <option value="3">3年</option>
                            <option value="4">4年</option>
                            <option value="5">5年</option>
                            <option value="6">6年</option>
                        </select>
                        </td>
                    </tr>
                    <tr >
                        <td>学位:</td>
                        <td><select name="academicDegree" id="xlxw" class="easyui-combobox"  style="height: 30px;width: 160px">
                            <option value="无">无</option>
                            <option value="学士">学士</option>
                            <option value="硕士">硕士</option>
                            <option value="博士">博士</option>
                        </select>
                        </td>
                        <td>毕业时间:</td>
                        <td>
                            <input class="easyui-datebox" editable="fasle"
                                   id="xlsj" name="graduationTime" style="height: 30px;width: 160px">
                        </td>
                    </tr>

                </table>
                <a class="easyui-linkbutton" style="width: 180px" id="addxlxx">提交</a>
        </div>
        <%--教育经历--%>
        <table class="tb_css" id="xltable" style="width:90%;margin-top: 20px;">
        <tr>
            <td colspan="7" class="table_title">教育经历(学历由低到高依次填写)</td>
        </tr>
            <tr>
                <td colspan="7"  >

                    <table id="xlxxdg"  style="height:170px; font-size: 10px;">
                        <!-- 查询表格 -->
                    </table>

                </td>
            </tr>
        </table>
        <%--外语程度--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">外语程度</td>
            </tr>

            <tr>
                <td width="15%" class="mytext">外语类别</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.wylb!=null}">
                        <input id="wylb" name="wylb" value="${grxx.wylb}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.wylb==null}">
                        <input id="wylb" name="wylb"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">外语等级</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.wydj!=null}">
                        <input  id="wydj" name="wydj" value="${grxx.wydj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.wydj==null}">
                        <input  id="wydj" name="wydj"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">外语成绩</td>
                <td width="20%" class="context">
                    <c:if test="${grxx.wycj!=null}">
                        <input id="wycj" name="wycj" value="${grxx.wycj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.wycj==null}">
                        <input id="wycj" name="wycj"  style="width:100%" >
                    </c:if>
                </td>
            </tr>
        </table>
        <%--工作情况--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">工作情况</td>
            </tr>

            <tr>
                <td width="15%" class="mytext">工作单位</td>
                <td width="20%" class="context" colspan="5">
                    <c:if test="${grxx.workUnit!=null}">
                        <input id="workUnit" name="workUnit" value="${grxx.workUnit}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.workUnit==null}">
                        <input id="workUnit" name="workUnit"  style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">是否县属企事业单位</td>
                <td width="20%" class="context" colspan="2">
                    <c:if test="${grxx.sfxssydw!=null}">
                        <input id="sfxssydw" name="sfxssydw" value="${grxx.sfxssydw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.sfxssydw==null}">
                        <input id="sfxssydw" name="sfxssydw"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">属何县属企事业单位</td>
                <td width="20%" class="context" colspan="2">
                    <c:if test="${grxx.shxsqtdw!=null}">
                        <input id="shxsqtdw" name="shxsqtdw" value="${grxx.shxsqtdw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.shxsqtdw==null}">
                        <input id="shxsqtdw" name="shxsqtdw"  style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">行政职务</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.xzzw!=null}">
                        <input id="xzzw" name="xzzw" value="${grxx.xzzw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.xzzw==null}">
                        <input id="xzzw" name="xzzw" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">行政职务聘任时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.xzzwrpsj!=null}">
                        <input id="xzzwrpsj" editable="fasle"
                               name="xzzwrpsj" class="easyui-datebox" value="${grxx.xzzwrpsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.xzzwrpsj==null}">
                        <input id="xzzwrpsj" class="easyui-datebox" name="xzzwrpsj" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">参加工作时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.cjgzsj!=null}">
                        <input id="cjgzsj" editable="fasle"
                               name="cjgzsj" class="easyui-datebox" value="${grxx.cjgzsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.cjgzsj==null}">
                        <input id="cjgzsj" class="easyui-datebox" name="cjgzsj" style="width:100%" >
                    </c:if>
                </td>
            </tr>
            <tr>
                <td colspan="7" class="table_title">专业技术</td>
            </tr>

            <tr>
                <td width="15%" class="mytext">现从事何种<br/>专业技术工作</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.xcshzzyjsgz!=null}">
                        <input id="xcshzzyjsgz" name="xcshzzyjsgz" value="${grxx.xcshzzyjsgz}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.xcshzzyjsgz==null}">
                        <input id="xcshzzyjsgz" name="xcshzzyjsgz"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">现任专业技术职务</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.xzzyjszw!=null}">
                        <input id="xzzyjszw" name="xzzyjszw" value="${grxx.xzzyjszw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.xzzyjszw==null}">
                        <input id="xzzyjszw" name="xzzyjszw"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">中级职称证书编号</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.zjzczsbh!=null}">
                        <input id="zjzczsbh" name="zjzczsbh" value="${grxx.zjzczsbh}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.zjzczsbh==null}">
                        <input id="zjzczsbh" name="zjzczsbh"  style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">任职资格取得时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.rzzgqdsj!=null}">
                        <input id="rzzgqdsj" editable="fasle"
                               name="rzzgqdsj" class="easyui-datebox" value="${grxx.rzzgqdsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.rzzgqdsj==null}">
                        <input id="rzzgqdsj" class="easyui-datebox" name="rzzgqdsj"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">任职资格聘任时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.rpzgprsj!=null}">
                        <input id="rpzgprsj" editable="fasle"
                               name="rpzgprsj" class="easyui-datebox" value="${grxx.rpzgprsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.rpzgprsj==null}">
                        <input id="rpzgprsj" name="rpzgprsj"  class="easyui-datebox" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">任职资格审批机关</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.rzzgspjg!=null}">
                        <input id="rzzgspjg" name="rzzgspjg" value="${grxx.rzzgspjg}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.rzzgspjg==null}">
                        <input id="rzzgspjg" name="rzzgspjg" style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">现任第二专业职务</td>
                <td width="20%" class="context" colspan="3" >
                    <c:if test="${grxx.xrdrzyzw!=null}">
                        <input id="xrdrzyzw" name="xrdrzyzw" value="${grxx.xrdrzyzw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.xrdrzyzw==null}">
                        <input id="xrdrzyzw" name="xrdrzyzw"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">第二任职资格<br/>取得时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.derzgqdsj!=null}">
                        <input id="derzgqdsj" editable="fasle"
                               name="derzgqdsj" class="easyui-datebox" value="${grxx.derzgqdsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.derzgqdsj==null}">
                        <input id="derzgqdsj" name="derzgqdsj" class="easyui-datebox" style="width:100%" >
                    </c:if>
                </td>
            </tr>
            <tr>
                <td colspan="7"  style="color: red" class="table_title">以下内容由之前有获其他高级职称者填写</td>
            </tr>

            <tr>
                <td width="15%" class="mytext">高级职称专业</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.gjzczy!=null}">
                        <input id="gjzczy" name="gjzczy" value="${grxx.gjzczy}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.gjzczy==null}">
                        <input id="gjzczy" name="gjzczy"  style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">高级职称证书编号</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.gjzczsbh!=null}">
                        <input id="gjzczsbh" name="gjzczsbh" value="${grxx.gjzczsbh}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.gjzczsbh==null}">
                        <input id="gjzczsbh" name="gjzczsbh" style="width:100%" >
                    </c:if>
                </td>
                <td width="15%" class="mytext">高级职称证书<br/>获得时间</td>
                <td width="20%" class="context" >
                    <c:if test="${grxx.gjzczshdsj!=null}">
                        <input id="gjzczshdsj" editable="fasle"
                               name="gjzczshdsj" class="easyui-datebox" value="${grxx.gjzczshdsj}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.gjzczshdsj==null}">
                        <input id="gjzczshdsj" name="gjzczshdsj" class="easyui-datebox" style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr>
                <td width="15%" class="mytext">高级职称审批机关</td>
                <td width="20%" class="context" colspan="5" >
                    <c:if test="${grxx.gjzcspjg!=null}">
                        <input id="gjzcspjg" name="gjzcspjg" value="${grxx.gjzcspjg}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.gjzcspjg==null}">
                        <input id="gjzcspjg" name="gjzcspjg"  style="width:100%" >
                    </c:if>
                </td>
            </tr>
        </table>
        <%--社会事业及参政情况--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">社会事业及参政情况</td>
            </tr>

            <tr >
                <td width="15%"  class="mytext">何时加入中国共产党(共青团)任何职务</td>
                <td width="40%"  class="context" colspan="6" >
                    <c:if test="${grxx.hsjrzggctrhzw!=null}">
                        <input id="hsjrzggctrhzw" name="hsjrzggctrhzw" value="${grxx.hsjrzggctrhzw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.hsjrzggctrhzw==null}">
                        <input id="hsjrzggctrhzw" name="hsjrzggctrhzw"  style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr >
                <td width="15%" class="mytext">何时何地参加何种民主党派任何职务</td>
                <td width="40%" class="context" colspan="6" >
                    <c:if test="${grxx.hshdcjhzmzdprhzw!=null}">
                        <input id="hshdcjhzmzdprhzw" name="hshdcjhzmzdprhzw" value="${grxx.hshdcjhzmzdprhzw}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.hshdcjhzmzdprhzw==null}">
                        <input id="hshdcjhzmzdprhzw" name="hshdcjhzmzdprhzw"  style="width:100%" >
                    </c:if>
                </td>
            </tr>

            <tr >
                <td width="15%"  class="mytext">参加何种学术团体何职务有何兼职</td>
                <td width="40%"  class="context" colspan="6" >
                    <c:if test="${grxx.cjhzxstthzwhjz!=null}">
                        <input id="cjhzxstthzwhjz" name="cjhzxstthzwhjz" value="${grxx.cjhzxstthzwhjz}" style="width:100%" >
                    </c:if>
                    <c:if test="${grxx.cjhzxstthzwhjz==null}">
                        <input id="cjhzxstthzwhjz" name="cjhzxstthzwhjz"  style="width:100%" >
                    </c:if>
                </td>
            </tr>
        </table>
        <%--何时获何专业执业资格--%>
        <table class="tb_css" id="zgtable" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">何时获何专业执业资格</td>
            </tr>
            <tr>
                <td colspan="7"  >
                <table id="zyzgdg"  style="height:170px; font-size: 10px;">
                    <!-- 查询表格 -->
                </table>
                </td>
            </tr>

        </table>
        <!-- 新增职业资格 -->
        <div id="zyzgwin" style="display:none;">

                <table style="border-collapse:separate; border-spacing:40px;">
                    <tr >
                        <td>获得执业资格时间:</td>
                        <td>
                            <input id="zyzghdsj"  editable="fasle"
                                   class="easyui-datebox" name="hdsj" style="height: 30px;width: 160px">
                        </td>
                    </tr>
                    <tr >
                        <td>获得执业资格名称:</td>
                        <td><input id="zyzghdmc" type="text" style="height: 30px;width: 160px" name="hdzyzgmc"></td>
                    </tr>
                    <tr >
                        <td>获得执业资格专业:</td>
                        <td><input id="zyzghdzy" type="text" style="height: 30px;width: 160px" name="hdzyzgzy"></td>
                    </tr>
                </table>
                <!--     <input type="submit" class="easyui-linkbutton" value="新增分组" style="width: 180px">-->
                <a class="easyui-linkbutton" style="width: 180px" id="addzyzg">提交</a>

        </div>
        <%--获奖情况--%>
        <table class="tb_css" id="hjtable" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">获奖情况</td>
            </tr>

            <td colspan="7"  >
                <table id="hjxxdg"  style="height:170px; font-size: 10px;">
                    <!-- 查询表格 -->
                </table>
            </td>
        </table>
        <!-- 新增获奖信息 -->
        <div id="hjxxwin" style="display:none;">
                <table style="border-collapse:separate; border-spacing:40px;">
                    <tr >
                        <td>获奖时间:</td>
                        <td>
                            <input id="hjxxhjsj" editable="fasle"
                                   class="easyui-datebox" name="hjsj" style="height: 30px;width: 160px">
                        </td>
                    </tr>
                    <tr >
                        <td>获得何奖:</td>
                        <td><input id="hjxxhdhj" type="text" style="height: 30px;width: 160px" name="hdhj"></td>
                    </tr>
                    <tr >
                        <td>授奖单位:</td>
                        <td><input id="hjxxsjdw" type="text" style="height: 30px;width: 160px" name="sjdw"></td>
                    </tr>
                </table>
                <a class="easyui-linkbutton" style="width: 180px" id="addhjxx">提交</a>

        </div>
        <%--申报类型--%>
        <table class="tb_css" style="width:90%;margin-top: 20px;">
            <tr>
                <td colspan="7" class="table_title">申报类型</td>
            </tr>

            <tr>
                <td class="context">
                    <input id="zcsb" type="radio" name="rblApproveType" value="正常申报" checked="checked">
                </td >
                <td class="context" colspan="6">
                    <label for="zcsb">正常申报（详见闽经贸委【2003】299号文件）</label>
                </td >
            </tr>
            <tr>
                <td class="context">
                    <input id="gzsb" type="radio" name="rblApproveType" value="国注申报" checked="checked">
                </td>

                <td class="context" colspan="6">
                    <label for="gzsb">国注申报（详见闽建人【2013】40号文件 ）</label>
                </td>
            </tr>
            <tr>
                <td class="context" >
                    <input id="xlpg" type="radio" name="rblApproveType" value="学历破格" checked="checked">
                </td>
                <td class="context" colspan="6">
                    <label for="xlpg">学历破格（详见闽经贸委【2003】299号文件）</label>
                </td>
            </tr>
            <tr>
                <td class="context">
                    <input id="zlpg" type="radio" name="rblApproveType" value="资历破格" checked="checked">
                </td>
                <td class="context" colspan="6">
                    <label for="zlpg">资历破格（详见闽经贸委【2003】299号文件）</label>
                </td>
            </tr>
            <tr>
                <td class="context" colspan="6">
                    <a id="findBtn" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:90px;">提交</a>
                    <a id="getType"  class="easyui-linkbutton btn-reset" data-options="iconCls:'icon-clear'" style="width:90px;">重置</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
<script type="text/javascript">
    //初始化方法
    $(function() {
        // 初始化操作如：表格，按钮，监听绑定
        initTablexlxx();//学历信息初始化
        initTablezyzg();//职业资格初始化
        initTablehjxx();//获奖信息初始化
        dataInit();//下拉选初始化
        //斑马线效果
        $("tr:even").css('background',"#FFFFFF");
        $("tr").bind('mouseover',function(){
            $(this).css('background','#d8ecff');
        });
        $('tr:even').bind('mouseout',function(){
            $(this).css('background','#FFFFFF');
        });
        $('tr:odd').bind('mouseout',function(){
            $(this).css('background','#ffffff');
        });

    });
    
    //下拉选赋值
    function dataInit(){
        //	获取单位地区
        $('#sblb').combobox({
            url : '<%=basePath%>/DeclarationCategory/getDeclarationCategory',
            valueField : "text",
            textField : "text",
            // 选择地区后

            onSelect : function(node) {
                var areaParam = {}

                if(node.id!="")
                    areaParam.id=node.id;//
                //加载该地区下的机构
                $('#sbzy').combobox({
                    url : '<%=basePath%>/DeclarationCategory/getDeclaringMajor',
                    queryParams:areaParam,
                    valueField : "id",
                    textField : "text",
                });
            }
        });

    }

    //重置
    $('#getType').click(function(){
        $('#secform').form('clear');
    });

    //学历网格
    function initTablexlxx() {
        $('#xlxxdg').datagrid({
            url:'<%=basePath%>/jbxxtx/tofinjyxx',
            fitColumns:true,//宽度自适应
            nowrap:false,//换行
            striped : true,// 斑马线效果
            singleSelect : true,
            pagination : false, //底部显示分页工具栏。
            rownumbers : false, //显示一个行号列。
            pageNumber : 1, //第几页显示（默认第一页，可以省略）
            pageSize : 3, //分页大小
            pageList : [3,10,15,20,25,30],//设置分页属性的时候 初始化页面大小选择列表。
            //remoteSort : false,
            columns :  [ [
                {
                    field : 'jyxxid',
                    title : 'id',
                    align : 'center',
                    width : 50,
                    hidden : true
                },{
                    field : 'graduateSchool',
                    title : '毕业学校',
                    align : 'center',
                    width :  '20%',

                },{
                    field : 'major',
                    title : '毕业专业',
                    width : '20%',
                    align : 'center',

                }, {
                    field : 'schoolSystem',
                    title : '学制',
                    width : '10%',
                    align : 'center',

                }, {
                    field : 'education',
                    title : '学历',
                    width : '10%',
                    align : 'center',

                },{
                    field : 'academicDegree',
                    title : '学位',
                    align : 'center',
                    width :  '10%',

                },  {
                    field : 'graduationTime',
                    title : '毕业时间',
                    align : 'center',
                    width :  '15%',

                }, {
                    field : 'bgan',
                    title : '<a href=\'javascript:void(0);\'style=\'margin-right: 5px\' onclick=\'savejyxx()\'>添加</a>',
                    align : 'center',
                    width :  '16%',
                    formatter: function (value, row, index) {
                        return "<a href='javascript:void(0);' class='delete easyui-linkbutton' onclick='deljyxx("+index+")'>删除</a>";

                    }
                } ] ],
        });

    }
    //职业资格网格
    function initTablezyzg() {
        $('#zyzgdg').datagrid({
            url:'<%=basePath%>/JbxxtxZyzg/tofinZyzgxx',
            fitColumns:true,//宽度自适应
            nowrap:false,//换行
            striped : true,// 斑马线效果
            singleSelect : true,
            pagination : false, //底部显示分页工具栏。
            rownumbers : false, //显示一个行号列。
            pageNumber : 1, //第几页显示（默认第一页，可以省略）
            pageSize : 3, //分页大小
            pageList : [3,10,15,20,25,30],//设置分页属性的时候 初始化页面大小选择列表。
            //remoteSort : false,
            columns :  [ [
                {
                    field : 'zyzgid',
                    title : 'id',
                    align : 'center',
                    width : 50,
                    hidden : true
                },{
                    field : 'hdsj',
                    title : '获得执业资格时间',
                    align : 'center',
                    width :  '25%',

                },{
                    field : 'hdzyzgmc',
                    title : '获得执业资格名称',
                    width : '26%',
                    align : 'center',

                }, {
                    field : 'hdzyzgzy',
                    title : '获得执业资格专业',
                    width : '25%',
                    align : 'center',

                }, {
                    field : 'cz',
                    title : '<a href=\'javascript:void(0);\' style=\'margin-right: 5px\' class=\'update easyui-linkbutton\' onclick=\'savezyzg()\'>添加</a>',
                    align : 'center',
                    width :  '25%',
                    formatter: function (value, row, index) {
                        return "<a href='javascript:void(0);' class='delete easyui-linkbutton' onclick='delzyzg("+index+")'>删除</a>";

                    }
                } ] ],
        });

    }
    //获奖信息网格
    function initTablehjxx() {
        $('#hjxxdg').datagrid({
            url:'<%=basePath%>/Jbxxtxhjqk/tofinhjqkxx',
            fitColumns:true,//宽度自适应
            nowrap:false,//换行
            striped : true,// 斑马线效果
            singleSelect : true,
            pagination : false, //底部显示分页工具栏。
            rownumbers : false, //显示一个行号列。
            pageNumber : 1, //第几页显示（默认第一页，可以省略）
            pageSize : 3, //分页大小
            pageList : [3,10,15,20,25,30],//设置分页属性的时候 初始化页面大小选择列表。
            //remoteSort : false,
            columns :  [ [
                {
                    field : 'hjqkid',
                    title : 'id',
                    align : 'center',
                    width : 50,
                    hidden : true
                },{
                    field : 'hjsj',
                    title : '获奖时间',
                    align : 'center',
                    width :  '25%',

                },{
                    field : 'hdhj',
                    title : '获得何奖',
                    width : '26%',
                    align : 'center',

                }, {
                    field : 'sjdw',
                    title : '授奖单位',
                    width : '25%',
                    align : 'center',

                }, {
                    field : 'cz',
                    title : '<a href=\'javascript:void(0);\' style=\'margin-right: 5px\' class=\'update easyui-linkbutton\' onclick=\'savehjxx()\'>添加</a>',
                    align : 'center',
                    width :  '25%',
                    formatter: function (value, row, index) {
                        return  "<a href='javascript:void(0);' class='delete easyui-linkbutton' onclick='delhjxx("+index+")'>删除</a>";

                    }
                } ] ],
        });

    }

    //保存学历信息窗口
    function savejyxx(){
        $('#xlxxwin').window({
            width: 700,
            height: 450,
            title: '新增学历',		//窗口标题文本
            shadow: true,
            minimizable: false,		//是否显示最小化窗口
            maximizable: false,	//是否显示最大化窗口
            collapsible: false,	//是否显示收缩窗口
            inline: false,			//显示在最上层
            modal: true 			//模式化窗口
        });
    }
    //保存职业资格信息窗口
    function savezyzg(){
        $('#zyzgwin').window({
            width: 500,
            height: 400,
            title: '新增专业执业资格信息',		//窗口标题文本
            shadow: true,
            minimizable: false,		//是否显示最小化窗口
            maximizable: false,	//是否显示最大化窗口
            collapsible: false,	//是否显示收缩窗口
            inline: false,			//显示在最上层
            modal: true 			//模式化窗口
        });
    }
    //保存获奖信息窗口
    function savehjxx(){
        $('#hjxxwin').window({
            width: 500,
            height: 400,
            title: '新增获奖信息',		//窗口标题文本
            shadow: true,
            minimizable: false,		//是否显示最小化窗口
            maximizable: false,	//是否显示最大化窗口
            collapsible: false,	//是否显示收缩窗口
            inline: false,			//显示在最上层
            modal: true 			//模式化窗口
        });
    }

    //提交学历表单
    $("#addxlxx").click(function () {
        var data = {
            graduateSchool: $('#xlxx').val(),
            major: $('#xlzy').val(),
            education: $('#xlxl').val(),
            academicDegree: $('#xlxw').val(),
            schoolSystem: $('#xlxz').val(),
            graduationTime: $('#xlsj').combobox('getValue')
        }
        if( data.graduateSchool==''){
            alert("毕业学校不能为空");
            return false;
        }else if( data.major==''){
            alert("专业不能为空");
            return false;
        }else if( data.graduationTime==''){
            alert("毕业时间不能为空");
            return false;
        }else{ $.ajax({
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(data),
            url: "<%=basePath%>/jbxxtx/toaddjyxx",
            success: function (data) {

                location.reload();
            }
        });
        }


    });
    //提交专业执业资格表单
    $("#addzyzg").click(function () {

        var data = {
            hdsj: $('#zyzghdsj').combobox('getValue'),
            hdzyzgmc: $('#zyzghdmc').val(),
            hdzyzgzy: $('#zyzghdzy').val(),
        }
        if( data.hdsj==''){
            alert("获得执业资格时间不能为空 ");
            return false;
        }else if( data.hdzyzgmc==''){
            alert("获得执业资格名称不能为空");
            return false;
        }else if( data.hdzyzgzy==''){
            alert("获得执业资格专业不能为空");
            return false;
        }else{
            $.ajax({
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(data),
            url: "<%=basePath%>/JbxxtxZyzg/toaddZyzgxx",
            success: function (data) {
                location.reload();
            }
        });
        }

    });
    //提交获得奖表单
    $("#addhjxx").click(function () {
        var data = {
            hjsj: $('#hjxxhjsj').combobox('getValue'),
            sjdw: $('#hjxxsjdw').val(),
            hdhj: $('#hjxxhdhj').val(),
        }
        if( data.hjsj==''){
            alert("获奖情况不能为空");
            return false;
        }else if( data.hdhj==''){
            alert("获得何奖不能为空");
            return false;
        }else if( data.sjdw==''){
            alert("授奖单位不能为空");
            return false;
        }else{
            $.ajax({
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify(data),
                url: "<%=basePath%>/Jbxxtxhjqk/toaddhjqkxx",
                success: function (obj) {
                        location.reload();
                }
            });
        }
    });
    //提交个人信息表单
    $("#findBtn").click(function () {
        var data = {
            name: $('#name').val(),
            onceName: $('#onceName').val(),
            sex: $('#sex').val(),
            nation: $('#nation').val(),
            contactNumber: $('#contactNumber').val(),
            personalNumber: $('#personalNumber').val(),
            wages: $('#wages').val(),
            sfzhm: $('#sfzhm').val(),
            stzk: $('#stzk').val(),
            birthPlace: $('#birthPlace').val(),
            postalCode: $('#postalCode').val(),
            rsdacfdw: $('#rsdacfdw').val(),
            clhjdz: $('#clhjdz').val(),
            birthDate: $('#birthDate').val(),

            wylb: $('#wylb').val(),
            wydj: $('#wydj').val(),
            wycj: $('#wycj').val(),

            sfxssydw: $('#sfxssydw').val(),
            shxsqtdw: $('#shxsqtdw').val(),
            workUnit: $('#workUnit').val(),
            xzzw: $('#xzzw').val(),
            xzzwrpsj: $('#xzzwrpsj').combobox('getValue'),
            cjgzsj: $('#cjgzsj').combobox('getValue'),

            xcshzzyjsgz: $('#xcshzzyjsgz').val(),
            xzzyjszw: $('#xzzyjszw').val(),
            zjzczsbh: $('#zjzczsbh').val(),
            rzzgqdsj: $('#rzzgqdsj').combobox('getValue'),
            rpzgprsj: $('#rpzgprsj').combobox('getValue'),
            rzzgspjg: $('#rzzgspjg').val(),
            xrdrzyzw: $('#xrdrzyzw').val(),
            derzgqdsj: $('#derzgqdsj').combobox('getValue'),

            gjzczy: $('#gjzczy').val(),
            gjzczsbh: $('#gjzczsbh').val(),
            gjzczshdsj: $('#gjzczshdsj').combobox('getValue'),
            gjzcspjg: $('#gjzcspjg').val(),

            hsjrzggctrhzw: $('#hsjrzggctrhzw').val(),
            hshdcjhzmzdprhzw: $('#hshdcjhzmzdprhzw').val(),
            cjhzxstthzwhjz: $('#cjhzxstthzwhjz').val(),
            gjzcspjg: $('#gjzcspjg').val(),

        };
        $.ajax({
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(data),
            url: "<%=basePath%>/jbxxtx/toupdejbxx",
            success: function (data) {
                location.reload();
            }
        });
    });

    //删除学历
    function deljyxx(index){
        $('#xlxxdg').datagrid('selectRow',index);// 关键在这里
        var row = $('#xlxxdg').datagrid('getSelected');
        $.messager.confirm('确认对话框', '您确定要删除吗？删除将不可恢复!!', function (r) {
            if (r) {
        $.ajax({
            datatype: "json",
            contentType: "application/json",
            url:"<%=basePath%>/jbxxtx/todeljyxx",
            data:{
                jyxxid:row.jyxxid,
            },
            success: function(req) {
                $('#xlxxdg').datagrid('load');
                //请求成功时处理
            },
            error: function() {
                alert("失败");
                //请求出错处理
            }
        })
            }
        });
    }
    //删除职业资格
    function delzyzg(index){
        $('#zyzgdg').datagrid('selectRow',index);// 关键在这里 选定行
        var zgrow = $('#zyzgdg').datagrid('getSelected');//获取行信息
        $.messager.confirm('确认对话框', '您确定要删除吗？删除将不可恢复!!', function (r) {
            if (r) {
        $.ajax({
            datatype: "json",
            contentType: "application/json",
            url:"<%=basePath%>/JbxxtxZyzg/todelZyzgxx",
            data:{
                zyzgid:zgrow.zyzgid,
            },
            success: function(zgreq) {
                $('#zyzgdg').datagrid('load');
                //请求成功时处理
            },
            error: function() {
                alert("失败");
                //请求出错处理
            }
        })
            }
        });
    }
    //删除获奖信息
    function delhjxx(index){
        $('#hjxxdg').datagrid('selectRow',index);// 关键在这里
        var hjrow = $('#hjxxdg').datagrid('getSelected');
        $.messager.confirm('确认对话框', '您确定要删除吗？删除将不可恢复!!', function (r) {
            if (r) {
        $.ajax({
            datatype: "json",
            contentType: "application/json",
            url:"<%=basePath%>/Jbxxtxhjqk/todelhjqkxx",
            data:{
                hjqkid:hjrow.hjqkid,
            },
            success: function(req) {
                $('#hjxxdg').datagrid('load');
                //请求成功时处理
            },
            error: function() {
                alert("失败");
                //请求出错处理
            }
        });
    }
    });
    }

</script>

</html>
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



</script>
<body>

<h1>你好啊</h1>
</body>
</html>

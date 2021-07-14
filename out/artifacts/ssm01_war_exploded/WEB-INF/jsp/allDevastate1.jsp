<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>感染排行</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
<%--    <link rel="stylesheet" href="css/base.css">--%>
<%--    <link rel="stylesheet" href="css/index.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <style type="text/css">
        a:link{color:white;}
        a:visited{color:white;}

    </style>

</head>
<body style="background: url(${pageContext.request.contextPath}/images/bg.jpg) no-repeat">



<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" >
                <h1 style="color: white">
                    <small style="color: white">感染排行</small>
                </h1>
                <a href="${pageContext.request.contextPath}/a/b"  style="top: -15px; float: right ;position: relative">返回</a>
            </div>

            <table class="table table-hover table-striped">
                <thead>
                <tr style="color: white">
                    <th>排名</th>
                    <th>州</th>
                    <th>感染人数</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="datastate1" items="${requestScope.get('list')}">
                    <tr style="color: cornflowerblue">
                        <td>${datastate1.getRank()}</td>
                        <td>${datastate1.getState()}</td>
                        <td>${datastate1.getCases()}</td>



                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>

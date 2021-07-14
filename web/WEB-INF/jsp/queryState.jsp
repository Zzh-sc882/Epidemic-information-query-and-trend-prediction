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
</head>
<body style="background: deepskyblue">



<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>感染排行</small>
                </h1>
            </div>

            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>州</th>
                    <th>感染人数</th>
                    <th>死亡人数</th>
                    <th>病死率</th>


                </tr>
                </thead>

                <tbody>
                <c:forEach var="datastate1" items="${requestScope.get('list')}">
                    <tr>

                        <td>${datastate1.getState()}</td>
                        <td>${datastate1.getCases()}</td>
                        <td>${datastate1.getDeaths()}</td>
                        <td>${datastate1.getRate()}</td>



                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>

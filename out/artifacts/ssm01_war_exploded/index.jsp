<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="zh-CN">--%>
<%--<head>--%>
<%--  <meta charset="utf-8">--%>
<%--  <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--  <title>疫情信息查询及趋势预测系统</title>--%>
<%--  <link href="css/bootstrap.css" rel="stylesheet">--%>
<%--  <link rel="stylesheet" href="css/base.css">--%>
<%--  <link rel="stylesheet" href="css/index.css">--%>
<%--  <style>--%>
<%--    a:link{color: white}--%>
<%--  </style>--%>
<%--</head>--%>

<%--<body>--%>

<%--<!--header-->--%>
<%--<div class="header">--%>
<%--  <div class="bg_header">--%>
<%--    <!-- 这个有3个类名 哪一个都行 -->--%>
<%--    <div class="header_nav  t_title">--%>
<%--      <h6 class="title1">疫情信息查询及趋势预测系统</h6>--%>
<%--    </div>--%>
<%--    <div class="search">--%>
<%--      <form action="${pageContext.request.contextPath}/datastate/queryState" method="post" class="search1" style="float: right">--%>
<%--        <input type="text" name="queryDatastateName" class="search2" placeholder="搜索" list="zou">--%>
<%--        <datalist id="zou">--%>
<%--          <option value="Alabama">--%>
<%--          <option value="Alaska">--%>
<%--          <option value="Arizona">--%>
<%--          <option value="Arkansas">--%>
<%--          <option value="California">--%>
<%--          <option value="Colorado">--%>
<%--          <option value="Columbia">--%>
<%--          <option value="Connecticu">--%>
<%--          <option value="Delaware">--%>
<%--          <option value="Florida">--%>
<%--          <option value="Georgia">--%>
<%--          <option value="Hawaii">--%>
<%--          <option value="Idaho">--%>
<%--          <option value="Illinois">--%>
<%--          <option value="Indiana">--%>
<%--          <option value="Iowa">--%>
<%--          <option value="Kansas">--%>
<%--          <option value="Kentucky">--%>
<%--          <option value="Louisiana">--%>
<%--          <option value="Maine">--%>
<%--          <option value="Maryland">--%>
<%--          <option value="Massachusetts">--%>
<%--          <option value="Michigan">--%>
<%--          <option value="Minnesota">--%>
<%--          <option value="Mississippi">--%>
<%--          <option value="Missour">--%>
<%--          <option value="Montana">--%>
<%--          <option value="Nebraska">--%>
<%--          <option value="Nevada">--%>
<%--          <option value="Hampshire">--%>
<%--          <option value="Jersey">--%>
<%--          <option value="Mexico">--%>
<%--          <option value="York">--%>
<%--          <option value="Carolina">--%>
<%--          <option value="Dakota">--%>
<%--          <option value="Ohio">--%>
<%--          <option value="Oklahoma">--%>
<%--          <option value="Oregon">--%>
<%--          <option value="Pennsyivania">--%>
<%--          <option value="Island">--%>
<%--          <option value="Carolina">--%>
<%--          <option value="Dakota">--%>
<%--          <option value="Tennessee">--%>
<%--          <option value="Texas">--%>
<%--          <option value="Utah">--%>
<%--          <option value="Vermont">--%>
<%--          <option value="Virgina">--%>
<%--          <option value="Washington">--%>
<%--          <option value="Virginia">--%>
<%--          <option value="Wisconsin">--%>
<%--        </datalist>--%>
<%--        <input type="submit" value="" name="" id="" class="btn btn-primary">--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>

<%--</div>--%>

<%--<!--main-->--%>
<%--<div class="data_content">--%>
<%--  <!-- <div class="data_time">--%>
<%--      温馨提示: 点击模块后跳转至详情页面。--%>
<%--  </div> -->--%>
<%--  <div class="data_main">--%>
<%--    <!-- zzh 左边的2个 -->--%>
<%--    <div class="main_left fl">--%>
<%--      <!-- t_btn6                                                             -->--%>
<%--      <div class="left_1 t_btn6" style="cursor: pointer;">--%>
<%--        <!-- 边框指的是哪个角角 -->--%>
<%--        <!--左上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--右上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--左下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <!--右下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <div class="main_title">--%>
<%--          <!-- <img src="picture/t_1.png" alt=""> -->--%>
<%--          各州死亡占比--%>
<%--        </div>--%>
<%--        <!-- 圆饼图 -->--%>
<%--        <div id="chart_1" class="chart" style="width:100%;height: 280px;"></div>--%>
<%--      </div>--%>
<%--      <div class="left_2" style="cursor: pointer;">--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <!-- zzh  若追求细节，可把下面的图片换成折线图 -->--%>
<%--        <div class="main_title">--%>
<%--          <!-- <img src="picture/t_2.png" alt=""> -->--%>
<%--          全美死亡确诊趋势图--%>
<%--        </div>--%>
<%--        <!-- t_btn9                                                               -->--%>
<%--        <div id="chart_2" class="chart t_btn9" style="width:100%;height: 280px;"></div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <div class="main_center fl">--%>
<%--      <div class="center_text" style="position: relative;">--%>

<%--        <!--左上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--右上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--左下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <!--右下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <!-- zzh 下面的图片可换成美国地图 -->--%>
<%--        <div class="main_title" style="width: 230px;">--%>
<%--          <!-- <img src="picture/t_3.png" alt=""> -->--%>
<%--          美国各州疫情分布图--%>
<%--        </div>--%>
<%--        <div id="chart_map" style="width:100%;height:610px;">--%>
<%--        </div>--%>
<%--        <!-- <div class="linshi_zdy">--%>
<%--            <ul>--%>
<%--                <li><span></span>2015批(8个)</li>--%>
<%--                <li><span></span>2016批(15个)</li>--%>
<%--                <li><span></span>2017批(13个)</li>--%>
<%--                <li><span></span>2018批(11个)</li>--%>
<%--            </ul>--%>
<%--        </div> -->--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <!-- <style type="text/css">--%>
<%--    .linshi_zdy{--%>
<%--        position: absolute;--%>
<%--        right: 0px;--%>
<%--        top: 450px;--%>
<%--    }--%>
<%--    .linshi_zdy li{--%>
<%--        width: 150px;--%>
<%--        font-size: 16px;--%>
<%--        padding: 3px 8px;--%>
<%--        cursor: pointer;--%>
<%--    }--%>
<%--    .linshi_zdy span{--%>
<%--        display: block;--%>
<%--        width: 14px;--%>
<%--        height: 14px;--%>
<%--        float: left;--%>
<%--        border-radius: 50%;--%>
<%--        margin-top: 3px;--%>
<%--        margin-right: 5px;--%>
<%--    }--%>
<%--    .linshi_zdy li:first-child{--%>
<%--        color: #ff0000;--%>
<%--    }--%>
<%--    .linshi_zdy li:first-child span{--%>
<%--        background: #ff0000;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(2){--%>
<%--        color: #9cff00;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(2) span{--%>
<%--        background: #9cff00;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(3){--%>
<%--        color: #fff;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(3) span{--%>
<%--        background: #fff;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(4){--%>
<%--        color: #f4a100;--%>
<%--    }--%>
<%--    .linshi_zdy li:nth-child(4) span{--%>
<%--        background: #f4a100;--%>
<%--    }--%>
<%--    </style> -->--%>
<%--    <div class="main_right fr">--%>
<%--      <div class="right_1">--%>
<%--        <!--左上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--右上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--左下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <!--右下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <div class="main_title" style="width:220px;">--%>
<%--          <!-- <img src="picture/t_4.png" alt=""> -->--%>
<%--          各州死亡趋势图--%>
<%--        </div>--%>
<%--        <div id="chart_3" class="echart t_btn7" style="width:100%;height: 280px;"></div>--%>
<%--      </div>--%>
<%--      <div class="right_2">--%>
<%--        <!--左上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--右上边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <!--左下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <!--右下边框-->--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <div class="main_title  tu" id="guai"  onclick="openDialog()" style="width:200px;">--%>
<%--          <!-- <img src="picture/t_5.png" alt=""> -->--%>
<%--          拐点图--%>
<%--        </div>--%>
<%--        <div id="light" class="white_content">--%>
<%--          <div class="guai_head">--%>
<%--            <div class="guai_title">--%>
<%--              <h1>拐点图</h1>--%>
<%--            </div>--%>
<%--            <div class="guai_close" onclick="closeDialog()">--%>

<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="guai_content">--%>
<%--            拐点图--%>
<%--          </div>--%>
<%--          <!-- <a href = "/scripts/guaidian.js" onclick = "closeDialog()">点这里关闭本窗口</a> -->--%>
<%--        </div>--%>
<%--        <!-- <div id="fade" class="black_overlay"></div>  -->--%>
<%--        <!-- 啥也没有 -->--%>
<%--        <div id="chart_4" class="echart fl t_btn4" style="width:100%;height: 280px;cursor: pointer;"></div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <div class="data_bottom">--%>
<%--    <!-- 比其他的几个多了个类名 t_btn5                                                -->--%>
<%--    <div class="bottom_1 fl t_btn5" style="cursor: pointer;">--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="t_l_line"></i>--%>
<%--        <i class="l_t_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="t_r_line"></i>--%>
<%--        <i class="r_t_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="l_b_line"></i>--%>
<%--        <i class="b_l_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="r_b_line"></i>--%>
<%--        <i class="b_r_line"></i>--%>
<%--      </div>--%>
<%--      <div class="main_title">--%>
<%--        <!-- <img src="picture/t_7.png" alt=""> -->--%>
<%--        每日新增排行榜--%>
<%--      </div>--%>
<%--      <!-- t_btn8                                                                  -->--%>
<%--      <div class="main_table t_btn8">--%>
<%--        <!-- 修改table -->--%>
<%--        <table>--%>
<%--          <thead>--%>
<%--          <tr>--%>
<%--            <th>排名</th>--%>
<%--            <th>州</th>--%>
<%--            <th>新增</th>--%>
<%--          </tr>--%>
<%--          </thead>--%>
<%--          <tbody>--%>
<%--          &lt;%&ndash;          <c:forEach var="datastate1" items="${requestScope.get('list')}">&ndash;%&gt;--%>
<%--          &lt;%&ndash;          <tr>&ndash;%&gt;--%>
<%--          &lt;%&ndash;            <td>${datastate1.getRank()}</td>&ndash;%&gt;--%>
<%--          &lt;%&ndash;            <td>${datastate1.getState()}</td>&ndash;%&gt;--%>
<%--          &lt;%&ndash;            <td>${datastate1.getCases()}</td>&ndash;%&gt;--%>
<%--          &lt;%&ndash;          </tr>&ndash;%&gt;--%>
<%--          &lt;%&ndash;          </c:forEach>&ndash;%&gt;--%>
<%--          </tbody>--%>
<%--        </table>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <!-- 中间2个上面套了一个 -->--%>
<%--    <div class="bottom_center fl">--%>
<%--      <div class="bottom_2 fl">--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <div class="main_title" style="width: 260px;left:40%;">--%>
<%--          <!-- <img src="picture/t_7.png" alt=""> -->--%>

<%--            <a href="${pageContext.request.contextPath}/devastate1/allDevastate1">确诊排行榜</a>--%>

<%--        </div>--%>

<%--        <!-- t_btn8                                                             -->--%>
<%--        <div class="main_table t_btn8">--%>
<%--          <table>--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--              <th>排名</th>--%>
<%--              <th>州</th>--%>
<%--              <th>确诊</th>--%>

<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>

<%--            </tr>--%>
<%--            <c:forEach var="index" items="${requestScope.get('list')}">--%>
<%--              <tr>--%>
<%--                <td>${index.getState()}</td>--%>
<%--                <td>${index.getState()}</td>--%>
<%--                <td>${index.getCases()}</td>--%>
<%--              </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--          </table>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="bottom_3 fl">--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_l_line"></i>--%>
<%--          <i class="l_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="t_r_line"></i>--%>
<%--          <i class="r_t_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="l_b_line"></i>--%>
<%--          <i class="b_l_line"></i>--%>
<%--        </div>--%>
<%--        <div class="t_line_box">--%>
<%--          <i class="r_b_line"></i>--%>
<%--          <i class="b_r_line"></i>--%>
<%--        </div>--%>
<%--        <div class="main_title" style="width:260px;left:45%;">--%>
<%--          <!-- <img src="picture/t_7.png" alt=""> -->--%>
<%--          <a href="${pageContext.request.contextPath}/devastate2/allDatastate2">死亡排行榜</a>--%>
<%--        </div>--%>
<%--        <!-- t_btn2                                                  和前面2个表格不一样 -->--%>
<%--        <div class="main_table t_btn2">--%>
<%--          <table>--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--              <th>排名</th>--%>
<%--              <th>州</th>--%>
<%--              <th>死亡</th>--%>
<%--              <th>病死率</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--              <td>数据</td>--%>
<%--            </tr>--%>
<%--            </tbody>--%>
<%--          </table>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <!-- 和其他不一样的是多了个fr 但是没有fl -->--%>
<%--    <div class="bottom_4 fr">--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="t_l_line"></i>--%>
<%--        <i class="l_t_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="t_r_line"></i>--%>
<%--        <i class="r_t_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="l_b_line"></i>--%>
<%--        <i class="b_l_line"></i>--%>
<%--      </div>--%>
<%--      <div class="t_line_box">--%>
<%--        <i class="r_b_line"></i>--%>
<%--        <i class="b_r_line"></i>--%>
<%--      </div>--%>
<%--      <div class="main_title">--%>
<%--        <!-- <img src="picture/t_7.png" alt=""> -->--%>
<%--        <a href="${pageContext.request.contextPath}/devastate3/allDatastate3">病死率排行榜</a>--%>
<%--      </div>--%>
<%--      <div class="main_table t_btn3 table_zdy">--%>
<%--        <table>--%>
<%--          <thead>--%>
<%--          <tr>--%>
<%--            <th>排名</th>--%>
<%--            <th>州</th>--%>
<%--            <th>病死率</th>--%>
<%--          </tr>--%>
<%--          </thead>--%>
<%--          <tbody>--%>
<%--          <tr>--%>
<%--            <!-- 链接跳转 -->--%>
<%--            <!-- <td><a target="blank" href="http://www.gxitps.org/zhanhui/detail/id/20.html">2018广西特产行销全国</a></td> -->--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <!-- <td><a target="blank" href="http://www.gxitps.org/zhanhui/detail/id/16.html">2018壮族三月三电商节</a></td> -->--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <!-- <td><a target="blank" href="http://www.gxitps.org/zhanhui/detail/id/17.html">2018灵山荔枝节</a></td> -->--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--          </tr>--%>
<%--          <tr>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--            <td>数据</td>--%>
<%--          </tr>--%>
<%--          </tbody>--%>
<%--        </table>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--<!-- 顺序不呢能乱,下面要用上面的 -->--%>
<%--<script src="scripts/jquery-2.2.1.min.js"></script>--%>
<%--<!-- 提示工具（Tooltip）插件 -->--%>
<%--<script src="scripts/bootstrap.min.js"></script>--%>
<%--<!-- 看              -->--%>
<%--<script src="scripts/common.js"></script>--%>
<%--<script src="scripts/echarts.min.js"></script>--%>
<%--<script src="scripts/datatool.js"></script>--%>
<%--<!-- 看              -->--%>
<%--<script src="scripts/index.js"></script>--%>
<%--<!-- <script src="scripts/china.js"></script> -->--%>
<%--<script src="scripts/guangxi.js"></script>--%>
<%--<!-- <script type="text/javascript">--%>
<%--    var dianshang = [];--%>
<%--    function get_shuju(){--%>
<%--        $.ajax({--%>
<%--            type : "post",--%>
<%--            async:false,--%>
<%--            url:"/record/dianshang",--%>
<%--            data:{},--%>
<%--            dataType:"json",--%>
<%--            success:function(res){--%>
<%--                // console.log(res);--%>
<%--                // if (res) {--%>
<%--                    // for (var i = 0; i < res.length; i++) {--%>
<%--                        dianshang.push(res);--%>
<%--                    // };--%>
<%--                // };--%>
<%--            }--%>
<%--        })--%>
<%--        return dianshang;--%>
<%--    }--%>

<%--    //电商企业入驻情况--%>
<%--    dianshang = get_shuju();--%>

<%--    var changedetail = echarts.init(document.getElementById('chart_4'));--%>
<%--    option = {--%>
<%--        tooltip: {--%>
<%--            trigger: 'axis',--%>
<%--            // formatter: '{b}</br>{a}: {c}</br>{a1}: {c1}'--%>
<%--        },--%>
<%--        toolbox: {--%>
<%--            show:false,--%>
<%--            feature: {--%>
<%--                dataView: {show: true, readOnly: false},--%>
<%--                magicType: {show: true, type: ['line', 'bar']},--%>
<%--                restore: {show: true},--%>
<%--                saveAsImage: {show: true}--%>
<%--            }--%>
<%--        },--%>
<%--        legend: {--%>
<%--            data:['',''],--%>
<%--            show:false--%>
<%--        },--%>
<%--        grid:{--%>
<%--            top:'18%',--%>
<%--            right:'5%',--%>
<%--            bottom:'8%',--%>
<%--            left:'5%',--%>
<%--            containLabel: true--%>
<%--        },--%>
<%--        xAxis: [--%>
<%--            {--%>
<%--                type: 'category',--%>
<%--                data: ['名优企业','技术服务','技术开发','电子商务','网络推广','涉互联网企业'],--%>
<%--                splitLine:{--%>
<%--                    show:false,--%>
<%--                    lineStyle:{--%>
<%--                        color: '#3c4452'--%>
<%--                    }--%>
<%--                },--%>
<%--                axisTick: {--%>
<%--                    show: false--%>
<%--                },--%>
<%--                axisLabel:{--%>
<%--                    textStyle:{--%>
<%--                        color:"#fff"--%>
<%--                    },--%>
<%--                    lineStyle:{--%>
<%--                        color: '#519cff'--%>
<%--                    },--%>
<%--                    alignWithLabel: true,--%>
<%--                    interval:0--%>
<%--                }--%>
<%--            }--%>
<%--        ],--%>
<%--        yAxis: [--%>
<%--            {--%>
<%--                type: 'value',--%>
<%--                name: '入驻数据',--%>
<%--                nameTextStyle:{--%>
<%--                    color:'#fff'--%>
<%--                },--%>
<%--                interval: 100000,--%>
<%--                min: 0,--%>
<%--                splitLine:{--%>
<%--                    show:true,--%>
<%--                    lineStyle:{--%>
<%--                        color: '#23303f'--%>
<%--                    }--%>
<%--                },--%>
<%--                axisLine: {--%>
<%--                    show:false,--%>
<%--                    lineStyle: {--%>
<%--                        color: '#115372'--%>
<%--                    }--%>
<%--                },--%>
<%--                axisTick: {--%>
<%--                    show: false--%>
<%--                },--%>
<%--                axisLabel:{--%>
<%--                    textStyle:{--%>
<%--                        color:"#fff"--%>
<%--                    },--%>
<%--                    alignWithLabel: true,--%>
<%--                    interval:0--%>

<%--                }--%>
<%--            }--%>
<%--        ],--%>
<%--        color:"yellow",--%>
<%--        series: [--%>
<%--            {--%>
<%--                name:'电商企业入驻',--%>
<%--                type:'bar',--%>
<%--                data: [dianshang[0][0],dianshang[0][1],dianshang[0][2],dianshang[0][3],dianshang[0][4],dianshang[0][5]],--%>
<%--                boundaryGap: '45%',--%>
<%--                barWidth:'40%',--%>

<%--                itemStyle: {--%>
<%--                    normal: {--%>
<%--                        color: function(params) {--%>
<%--                            var colorList = [--%>
<%--                                '#6bc0fb','#7fec9d','#fedd8b','#ffa597','#84e4dd','#6bc0fb'--%>
<%--                            ];--%>
<%--                            return colorList[params.dataIndex]--%>
<%--                        },label: {--%>
<%--                            show: true,--%>
<%--                            position: 'top',--%>
<%--                            formatter: '{c}'--%>
<%--                        }--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        ]--%>
<%--    };--%>
<%--    changedetail.setOption(option);--%>
<%--</script> -->--%>
<%--<script src="scripts/guaidian.js"></script>--%>
<%--</html>--%>
<%--<!-- <SCRIPT Language=VBScript></SCRIPT> -->--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
</head>
<body>

<h3>
  <a href="${pageContext.request.contextPath}/a/b">点击进入美国疫情信息查询及趋势预测系统</a>
</h3>
</body>
</html>
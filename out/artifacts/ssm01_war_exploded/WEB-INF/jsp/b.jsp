<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>疫情信息查询及趋势预测系统</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">

</head>
<style>
    a:link{color: white}
    a:visited{color: white}
</style>
<body>

<!--header-->
<div class="header">
    <div class="bg_header">
        <!-- 这个有3个类名 哪一个都行 -->
        <div class="header_nav  t_title">
            <h6 class="title1">疫情信息查询及趋势预测系统</h6>
        </div>
        <div class="search">
            <form  action="${pageContext.request.contextPath}/a/b" method="post" class="search1" style="float: right">
                <input type="text" name="queryDatastateName" class="search2" placeholder="搜索" list="zou">
                <datalist id="zou">
                    <option value="Alabama">
                    <option value="Alaska">
                    <option value="Arizona">
                    <option value="Arkansas">
                    <option value="California">
                    <option value="Colorado">
                    <option value="Columbia">
                    <option value="Connecticu">
                    <option value="Delaware">
                    <option value="Florida">
                    <option value="Georgia">
                    <option value="Hawaii">
                    <option value="Idaho">
                    <option value="Illinois">
                    <option value="Indiana">
                    <option value="Iowa">
                    <option value="Kansas">
                    <option value="Kentucky">
                    <option value="Louisiana">
                    <option value="Maine">
                    <option value="Maryland">
                    <option value="Massachusetts">
                    <option value="Michigan">
                    <option value="Minnesota">
                    <option value="Mississippi">
                    <option value="Missour">
                    <option value="Montana">
                    <option value="Nebraska">
                    <option value="Nevada">
                    <option value="Hampshire">
                    <option value="Jersey">
                    <option value="Mexico">
                    <option value="York">
                    <option value="Carolina">
                    <option value="Dakota">
                    <option value="Ohio">
                    <option value="Oklahoma">
                    <option value="Oregon">
                    <option value="Pennsyivania">
                    <option value="Island">
                    <option value="Carolina">
                    <option value="Dakota">
                    <option value="Tennessee">
                    <option value="Texas">
                    <option value="Utah">
                    <option value="Vermont">
                    <option value="Virgina">
                    <option value="Washington">
                    <option value="Virginia">
                    <option value="Wisconsin">
                </datalist>
                <input type="submit" value="" name="" id="" class="btn" onclick="openDialog1()">
<%--                <button class="layui-btn" lay-submit lay-filter="test" onclick="openDialog1()">立即提交</button>--%>
                <div id="light1" class="white_content1">
                    <div class="guai_head1">
                        <div class="guai_title1">
                            <h2>查询结果</h2>
                        </div>
                        <div class="guai_close1" >
                            <img src="${pageContext.request.contextPath}/picture/icon_746veix1co9/guanbi_3.png" alt="" onclick="closeDialog1()">
                        </div>
                    </div>
                    <div class="guai_content1">
                        <table>
                            <thead>
                            <tr>
                                <th>州</th>
                                <th>确诊人数</th>
                                <th>死亡人数</th>
                                <th>病死率</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach var="index" items="${requestScope.get('list')}">
                                <tr>
                                    <td>${index.getState()}</td>
                                    <td>${index.getCases()}</td>
                                    <td>${index.getDeaths()}</td>
                                    <td>${index.getRate()}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>

            <!-- <a href = "/scripts/guaidian.js" onclick = "closeDialog()">点这里关闭本窗口</a> -->
        </div>
    </div>
</div>

</div>

<!--main-->
<div class="data_content">
    <!-- <div class="data_time">
        温馨提示: 点击模块后跳转至详情页面。
    </div> -->
    <div class="data_main">
        <!-- zzh 左边的2个 -->
        <div class="main_left fl">
            <!-- t_btn6                                                             -->
            <div class="left_1 t_btn6" style="cursor: pointer;">
                <!-- 边框指的是哪个角角 -->
                <!--左上边框-->
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <!--右上边框-->
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <!--左下边框-->
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <!--右下边框-->
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <div class="main_title">
                    <!-- <img src="picture/t_1.png" alt=""> -->
                    各州确诊占比
                </div>
                <!-- 圆饼图 -->
                <div id="chart_1" class="chart" style="width:100%;height: 280px;"></div>
            </div>
            <div class="left_2" style="cursor: pointer;">
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <!-- zzh  若追求细节，可把下面的图片换成折线图 -->
                <div class="main_title">
                    <!-- <img src="picture/t_2.png" alt=""> -->
                    全美死亡确诊趋势图
                </div>
                <!-- t_btn9                                                               -->
                <div id="chart_2" class="chart t_btn9" style="width:100%;height: 280px;"></div>
            </div>
        </div>
        <div class="main_center fl">
            <div class="center_text" style="position: relative;">

                <!--左上边框-->
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <!--右上边框-->
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <!--左下边框-->
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <!--右下边框-->
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <!-- zzh 下面的图片可换成美国地图 -->
                <div class="main_title" style="width: 230px;">
                    <!-- <img src="picture/t_3.png" alt=""> -->
                    美国各州疫情分布图
                </div>
                <div id="chart_map" style="width:100%;height:610px;">
                </div>
                <!-- <div class="linshi_zdy">
                    <ul>
                        <li><span></span>2015批(8个)</li>
                        <li><span></span>2016批(15个)</li>
                        <li><span></span>2017批(13个)</li>
                        <li><span></span>2018批(11个)</li>
                    </ul>
                </div> -->
            </div>
        </div>

        <div class="main_right fr">
            <div class="right_1">
                <!--左上边框-->
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <!--右上边框-->
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <!--左下边框-->
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <!--右下边框-->
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <div class="main_title" style="width:220px;">
                    <!-- <img src="picture/t_4.png" alt=""> -->
                    各州死亡趋势图
                </div>
                <div id="chart_3" class="echart t_btn7" style="width:100%;height: 280px;"></div>
            </div>
            <div class="right_2">
                <!--左上边框-->
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <!--右上边框-->
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <!--左下边框-->
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <!--右下边框-->
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <div class="main_title  tu" id="guai" onclick="window.open('${pageContext.request.contextPath}/basic_line_chart.html')">
                    <!-- <img src="picture/t_5.png" alt=""> -->
                    拐点图
                </div>

                <div id="chart_4" class="echart fl t_btn4" style="width:100%;height: 280px;cursor: pointer;"></div>
            </div>
        </div>
    </div>
    <div class="data_bottom">
        <!-- 比其他的几个多了个类名 t_btn5                                                -->
        <div class="bottom_1 fl t_btn5" style="cursor: pointer;">
            <div class="t_line_box">
                <i class="t_l_line"></i>
                <i class="l_t_line"></i>
            </div>
            <div class="t_line_box">
                <i class="t_r_line"></i>
                <i class="r_t_line"></i>
            </div>
            <div class="t_line_box">
                <i class="l_b_line"></i>
                <i class="b_l_line"></i>
            </div>
            <div class="t_line_box">
                <i class="r_b_line"></i>
                <i class="b_r_line"></i>
            </div>
            <div class="main_title">
                <!-- <img src="picture/t_7.png" alt=""> -->
                加权严重度排行榜
            </div>
            <!-- t_btn8                                                                  -->
            <div class="main_table t_btn8">
                <!-- 修改table -->
                <table>
                    <thead>
                    <tr>
                        <th>排名</th>
                        <th>州</th>
                        <th>值</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>New York</td>
                        <td>3114742.5</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>New Jersey</td>
                        <td>1115708</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Massachusetts</td>
                        <td>563433.4</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Illinois</td>
                        <td>512402</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>California</td>
                        <td>484296.9
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- 中间2个上面套了一个 -->
        <div class="bottom_center fl">
            <div class="bottom_2 fl">
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <div class="main_title" style="width: 260px;left:40%;">
                    <!-- <img src="picture/t_7.png" alt=""> -->
                    <a href="${pageContext.request.contextPath}/devastate2/allDatastate2">死亡排行榜</a>


                </div>
                <!-- t_btn8                                                             -->
                <div class="main_table t_btn8">
                    <table>
                        <thead>
                        <tr>
                            <th>排名</th>
                            <th>州</th>
                            <th>死亡</th>
                            <th>病死率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>New York</td>
                            <td>937038</td>
                            <td>7</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>New Jersey</td>
                            <td>278144</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Michigan</td>
                            <td>146085</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Massachusetts</td>
                            <td>136594</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Pennsylvania</td>
                            <td>102387</td>
                            <td>5</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="bottom_3 fl">
                <div class="t_line_box">
                    <i class="t_l_line"></i>
                    <i class="l_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="t_r_line"></i>
                    <i class="r_t_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="l_b_line"></i>
                    <i class="b_l_line"></i>
                </div>
                <div class="t_line_box">
                    <i class="r_b_line"></i>
                    <i class="b_r_line"></i>
                </div>
                <div class="main_title" style="width:260px;left:45%;">
                    <!-- <img src="picture/t_7.png" alt=""> -->
                    <a href="${pageContext.request.contextPath}/devastate1/allDevastate1">确诊排行榜</a>
                </div>
                <!-- t_btn2                                                  和前面2个表格不一样 -->
                <div class="main_table t_btn2">
                    <table>
                        <thead>
                        <tr>
                            <th>排名</th>
                            <th>州</th>
                            <th>死亡</th>
                            <th>病死率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>New York</td>
                            <td>13231107</td>
                            <td>7</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>New Jersey</td>
                            <td>4883171</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Massachusetts</td>
                            <td>2475673</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Illinois</td>
                            <td>2316059</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>California</td>
                            <td>2211456</td>
                            <td>4</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- 和其他不一样的是多了个fr 但是没有fl -->
        <div class="bottom_4 fr">
            <div class="t_line_box">
                <i class="t_l_line"></i>
                <i class="l_t_line"></i>
            </div>
            <div class="t_line_box">
                <i class="t_r_line"></i>
                <i class="r_t_line"></i>
            </div>
            <div class="t_line_box">
                <i class="l_b_line"></i>
                <i class="b_l_line"></i>
            </div>
            <div class="t_line_box">
                <i class="r_b_line"></i>
                <i class="b_r_line"></i>
            </div>
            <div class="main_title">
                <!-- <img src="picture/t_7.png" alt=""> -->
                <a href="${pageContext.request.contextPath}/devastate3/allDatastate3">病死率排行榜</a>
            </div>
            <div class="main_table t_btn3 table_zdy">
                <table>
                    <thead>
                    <tr>
                        <th>排名</th>
                        <th>州</th>
                        <th>病死率</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Northern Mariana Islands</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Michigan</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Connecticut</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>New York</td>
                        <td>7</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Louisiana</td>
                        <td>6</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
<!-- 顺序不呢能乱,下面要用上面的 -->
<script src="${pageContext.request.contextPath}/scripts/jquery-2.2.1.min.js"></script>
<!-- 提示工具（Tooltip）插件 -->
<script src="${pageContext.request.contextPath}/scripts/bootstrap.min.js"></script>
<!-- 看              -->
<script src="${pageContext.request.contextPath}/scripts/common.js"></script>
<script src="${pageContext.request.contextPath}/scripts/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/scripts/datatool.js"></script>
<!-- 看              -->
<script src="${pageContext.request.contextPath}/scripts/index.js"></script>
<!-- <script src="scripts/china.js"></script> -->
<script src="${pageContext.request.contextPath}/scripts/guangxi.js"></script>

<script src="${pageContext.request.contextPath}/scripts/guaidian.js"></script>
<script src="${pageContext.request.contextPath}/scripts/select.js"></script>
</html>
<!-- <SCRIPT Language=VBScript></SCRIPT> -->

$(function () {
    echart_1();
    echart_2();
    echart_3();
    echart_4();
    echart_map();
    //echart_1湖南货物收入
    function echart_1() {
        var chartDom = document.getElementById('chart_1');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            // 标题
            // title: {
            //     text: '某站点用户访问来源',
            //     subtext: '纯属虚构',
            //     left: 'center'
            // },
            tooltip: {
                trigger: 'item'
            },
            // 工具栏
            // legend: {
            //     orient: 'vertical',
            //     left: 'left',
            // },
            series: [
                {   
                    labelLine:{  
                        normal:{  
                            length:1
                        }  
                    },  
                    label: { 　　　　　　　　　　//去除饼图的指示折线label
                    normal: {
                    show: false,
                    position: 'inside',
                    formatter:"{b}:{d}%"
                    },
                    },
                    name: '死亡人数',
                    type: 'pie',
                    radius: '70%',
                    data: [
                        {name:'New York'				,value:13231107},  
                        {name:'Maryland'				,value:950641},
                        {name:'Indiana'					,value:764794},
                        {name:'Ohio'					,value:755119},
                        {name:'Washington'				,value:707111},
                        {name:'Virginia'				,value:692810},
                        {name:'Colorado'				,value:649106},
                        {name:'Tennessee'				,value:486777},
                        {name:'North Carolina'			,value:459988},
                        {name:'Arizona'					,value:348419},
                        {name:'Missouri'				,value:336833},
                        {name:'Rhode Island'			,value:332313},
                        {name:'Wisconsin'				,value:321457},
                        {name:'Alabama'					,value:319025},
                        {name:'Iowa'					,value:314108},
                        {name:'Mississippi'				,value:295400},
                        {name:'Minnesota'				,value:282491},
                        {name:'South Carolina'			,value:264996},
                        {name:'Nevada'					,value:222290},
                        {name:'Utah'					,value:205581},
                        {name:'Kentucky'				,value:203552},
                        {name:'Nebraska'				,value:201088},
                        {name:'Delaware'				,value:191719},
                        {name:'District of Columbia'	,value:190158},
                        {name:'Kansas'					,value:187170},
                        {name:'Oklahoma'				,value:158406},
                        {name:'New Mexico'				,value:144662},
                        {name:'Arkansas'				,value:134312},
                        {name:'Oregon'					,value:115862},
                        {name:'South Dakota'			,value:100555},
                        {name:'New Hampshire'			,value:97186},
                        {name:'Idaho'					,value:89993},
                        {name:'Puerto Rico'				,value:71061},
                        {name:'Maine'					,value:51587},
                        {name:'West Virginia'			,value:47805},
                        {name:'North Dakota'			,value:44513},
                        {name:'Guam'					,value:42669},
                        {name:'Vermont'					,value:40628},
                        {name:'Hawaii'					,value:28266},
                        {name:'Wyoming'					,value:24368},
                        {name:'Montana'					,value:21483},
                        {name:'Alaska'					,value:16291},
                        {name:'Virgin Islands'			,value:3028},
                        {name:'Northern Mariana Islands',value:689},  
                        {name:'New Jersey'				,value:4883171},
                        {name:'Massachusetts'			,value:2475673},
                        {name:'Illinois'				,value:2316059},
                        {name:'California'				,value:2211456},
                        {name:'Pennsylvania	'			,value:1970295},
                        {name:'Michigan'				,value:1753801},
                        {name:'Florida'				    ,value:1480283},
                        {name:'Texas'					,value:1282385},
                        {name:'Louisiana'				,value:1258141},
                        {name:'Connecticut'				,value:1116652},
                        {name:'Georgia'				    ,value:1084055},
                       
                        
                    ],
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        myChart.setOption(option);
    }
    //电子商务销售额、订单数
    function echart_2() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart_2'));
        myChart.clear();
        option = {
            title: {
                text: ''
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['确诊','死亡'],
                textStyle:{
                    color: '#fff'
                },
                top: '8%'
            },
            grid: {
                top: '40%',
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            color: ['#FF4949','#FFA74D','#FFEA51','#4BF0FF','#44AFF0','#4E82FF','#584BFF','#BE4DFF','#F845F1'],
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: ['2020/1/21','2020/2/29','2020/3/25','2020/4/11','2020/5/19'],
                splitLine: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                }
            },
            yAxis: {
                name: '',
                type: 'value',
                splitLine: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                }
            },
            series: [
                {
                    name:'确诊',
                    type:'line',
                    data:[1, 70, 68780, 531028, 1536471]
                },
                {
                    name:'死亡',
                    type:'line',
                    data:[0, 1, 1049, 23109, 91936]
                }
            ]
        };
        myChart.setOption(option);
    }
    // echart_map美国地图
    function echart_map() {
        var ROOT_PATH = 'https://cdn.jsdelivr.net/gh/apache/echarts-website@asf-site/examples';
        var chartDom = document.getElementById('chart_map');
        var myChart = echarts.init(chartDom);
        var option;
        myChart.showLoading();
        $.get(ROOT_PATH + '/data/asset/geo/USA.json', function (usaJson) {
            myChart.hideLoading();
        
            echarts.registerMap('USA', usaJson, {
                Alaska: {              // 把阿拉斯加移到美国主大陆左下方
                    left: -131,
                    top: 25,
                    width: 15
                },
                Hawaii: {
                    left: -110,        // 夏威夷
                    top: 28,
                    width: 5
                },
                'Puerto Rico': {       // 波多黎各
                    left: -76,
                    top: 26,
                    width: 2
                }
            });
            option = {
                // title: {
                //     text: 'USA Population Estimates (2012)',
                //     subtext: 'Data from www.census.gov',
                //     sublink: 'http://www.census.gov/popest/data/datasets.html',
                //     left: 'right'
                // },
                tooltip: {
                    trigger: 'item',
                    showDelay: 0,
                    transitionDuration: 0.2,
                    formatter: function (params) {
                        // var value = (params.value + '').split('.');
                        // value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
                        return params.seriesName + '<br/>' + params.name + ': ' + params.value ;
                    }
                    // formatter: function (params) {
                    //     var res = params.name+'<br/>';
                    //     var myseries = option.series.data;
                    //     for (var i=0;i<myseries.length;i++)
                    //     {
                    //             if(myseries[i].name==params.name)
                    //             {
                    //                 res +=':'+myseries[i].value+myseries[i].value1;
                    //                 break;
                    //             }
                            
                    //     }
                    //     // var value = (params.value + '').split('.');
                    //     // value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
                    //     return res;
                    // }
                },
                visualMap: {
                    left: 'right',
                    min: 500,
                    max: 3800000,
                    inRange: {
                        color: ['#313695', '#4575b4', '#74add1', '#abd9e9', '#e0f3f8', '#ffffbf', '#fee090', '#fdae61', '#f46d43', '#d73027', '#a50026']
                    },
                    text: ['High', 'Low'],           // 文本，默认为数值文本
                    calculable: true
                },
                // toolbox: {
                //     show: true,
                //     //orient: 'vertical',
                //     left: 'left',
                //     top: 'top',
                //     feature: {
                //         dataView: {readOnly: false},
                //         restore: {},
                //         saveAsImage: {}
                //     }
                // },
                series: [
                    {
                        name: 'USA PopEstimates',
                        type: 'map',
                        roam: true,
                        map: 'USA',
                        emphasis: {
                            label: {
                                show: true
                            }
                        },
                        
                        // 文本位置修正
                        textFixed: {
                            Alaska: [20, -20]
                        },
                        data:[
                            {name: 'Alabama', value: 319025},
                            {name: 'Alaska', value: 16291},
                            {name: 'Arizona', value: 348419},
                            {name: 'Arkansas', value: 134312},
                            {name: 'California', value: 2211456},
                            {name: 'Colorado', value: 649106},
                            {name: 'Connecticut', value: 1116652},
                            {name: 'Delaware', value: 191719},
                            {name: 'District of Columbia', value: 190158},
                            {name: 'Florida', value: 1480283},
                            {name: 'Georgia', value: 1084055},
                            {name: 'Hawaii', value: 28266},
                            {name: 'Idaho', value: 89993},
                            {name: 'Illinois', value: 2316059},
                            {name: 'Indiana', value: 764794},
                            {name: 'Iowa', value: 314108},
                            {name: 'Kansas', value: 187170},
                            {name: 'Kentucky', value: 203552},
                            {name: 'Louisiana', value: 4601893},
                            {name: 'Maine', value: 51587},
                            {name: 'Maryland', value: 950641},
                            {name: 'Massachusetts', value: 2475673},
                            {name: 'Michigan', value: 1753801},
                            {name: 'Minnesota', value: 282491},
                            {name: 'Mississippi', value: 295400},
                            {name: 'Missouri', value: 336833},
                            {name: 'Montana', value: 21483},
                            {name: 'Nebraska', value: 201088},
                            {name: 'Nevada', value: 222290},
                            {name: 'New Hampshire', value: 97186},
                            {name: 'New Jersey', value: 4883171},
                            {name: 'New Mexico', value: 144662},
                            {name: 'New York', value: 13231107},
                            {name: 'North Carolina', value: 459988},
                            {name: 'North Dakota', value: 44513},
                            {name: 'Ohio', value: 755119},
                            {name: 'Oklahoma', value: 158406},
                            {name: 'Oregon', value: 115862},
                            {name: 'Pennsylvania', value: 1970295},
                            {name: 'Rhode Island', value: 332313},
                            {name: 'South Carolina', value: 264996},
                            {name: 'South Dakota', value: 100555},
                            {name: 'Tennessee', value: 486777},
                            {name: 'Texas', value: 1282385},
                            {name: 'Utah', value: 205581},
                            {name: 'Vermont', value: 40628},
                            {name: 'Virginia', value: 47805},
                            {name: 'Washington', value: 707111},
                            {name: 'West Virginia', value: 47805},
                            {name: 'Wisconsin', value: 321457},
                            {name: 'Wyoming', value: 24368},
                            {name: 'Puerto Rico', value: 71061}
                        ]
                        
                    }
                ]
            };
        
            myChart.setOption(option);
        });

        option && myChart.setOption(option);

    }

    //echart_3货物周转量
    function echart_3() {
        var chartDom = document.getElementById('chart_3');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    crossStyle: {
                        color: '#999'
                    }
                }
            },
            // toolbox: {
            //     feature: {
            //         dataView: {show: true, readOnly: false},
            //         magicType: {show: true, type: ['line', 'bar']},
            //         restore: {show: true},
            //         saveAsImage: {show: true}
            //     }
            // },
            legend: {
                data: ['每日新增确诊人数', '每日新增死亡人数'],
                top: '8%',
                textStyle:{
                    color: '#fff'
                },
            },
            grid: {
                top: '40%',
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    axisLine: {
                        lineStyle: {
                            color: '#fff'
                        }
                    },
                    type: 'category',
                    data: ['1月', '2月', '3月', '4月', '5月'],
                    axisPointer: {
                        type: 'shadow'
                    }
                }
            ],
            yAxis: [
                {
                    splitLine:{

                        show:false
        
                    },
                    // axisLine:{

                    //     show:false
        
                    // },   
                    axisLine: {
                        lineStyle: {
                            color: '#fff'
                        }
                    },     
                    type: 'value',
                    name: '确诊人数',
                    min: 0,
                    max: 1000000,
                    interval: 100000,
                    axisLabel: {
                        formatter: '{value}'
                    }
                },
                {
                    axisLine: {
                        lineStyle: {
                            color: '#fff'
                        }
                    },
                    splitLine:{

                        show:false
        
                    },
                    // axisLine:{

                    //     show:false
        
                    // },    
                    type: 'value',
                    name: '死亡人数',
                    min: 0,
                    max: 60000,
                    interval: 10000,
                    axisLabel: {
                        formatter: '{value}'
                    }
                }
            ],
            series: [
                {
                    name: '每日新增确诊人数',
                    type: 'bar',
                    data: [6, 63, 188255, 887161, 921970]
                },
                {
                    name: '每日新增死亡人数',
                    type: 'line',
                    yAxisIndex: 1,
                    data: [0, 1, 4009, 59089, 57674]
                }
            ]
        };
        

        myChart.setOption(option);

    }
    function echart_4(){
        var chart_af5c74274f024bd5b8194b83c8039aa6 = echarts.init(
            document.getElementById('chart_4'), 'white', {renderer: 'canvas'});
        var option_af5c74274f024bd5b8194b83c8039aa6 = {
            "grid": {
                "top": '20%',
                "left": '1%',
                "right": '1%',
                "bottom": '3%',
                "containLabel": true
            },
    "animation": true,
    "animationThreshold": 2000,
    "animationDuration": 1000,
    "animationEasing": "cubicOut",
    "animationDelay": 0,
    "animationDurationUpdate": 300,
    "animationEasingUpdate": "cubicOut",
    "animationDelayUpdate": 0,
    "color": [
        "#c23531",
        "#2f4554",
        "#61a0a8",
        "#d48265",
        "#749f83",
        "#ca8622",
        "#bda29a",
        "#6e7074",
        "#546570",
        "#c4ccd3",
        "#f05b72",
        "#ef5b9c",
        "#f47920",
        "#905a3d",
        "#fab27b",
        "#2a5caa",
        "#444693",
        "#726930",
        "#b2d235",
        "#6d8346",
        "#ac6767",
        "#1d953f",
        "#6950a1",
        "#918597"
    ],
    "series": [
        {

            "type": "line",
            "connectNulls": false,
            "symbol": "emptyCircle",
            "symbolSize": 4,
            "showSymbol": true,
            "smooth": false,
            "clip": true,
            "step": false,
            "data": [
                [
                    "2021-07-11",
                    128780648.05734201
                ],
                [
                    "2021-07-12",
                    129575676.17787594
                ],
                [
                    "2021-07-13",
                    130353161.19867009
                ],
                [
                    "2021-07-14",
                    131112993.59592539
                ],
                [
                    "2021-07-15",
                    131855100.20692545
                ],
                [
                    "2021-07-16",
                    132579442.49953145
                ],
                [
                    "2021-07-17",
                    133286015.10209498
                ],
                [
                    "2021-07-18",
                    133974844.4738574
                ],
                [
                    "2021-07-19",
                    134645987.48003426
                ],
                [
                    "2021-07-20",
                    135299529.7637016
                ],
                [
                    "2021-07-21",
                    135935583.99253017
                ],
                [
                    "2021-07-22",
                    136554288.11526617
                ],
                [
                    "2021-07-23",
                    137155803.6729883
                ],
                [
                    "2021-07-24",
                    137740314.13605672
                ],
                [
                    "2021-07-25",
                    138308023.23046443
                ],
                [
                    "2021-07-26",
                    138859153.25371277
                ],
                [
                    "2021-07-27",
                    139393943.4109119
                ],
                [
                    "2021-07-28",
                    139912648.1973901
                ],
                [
                    "2021-07-29",
                    140415535.8350004
                ],
                [
                    "2021-07-30",
                    140902886.75794816
                ],
                [
                    "2021-07-31",
                    141374992.1459933
                ],
                [
                    "2021-08-01",
                    141832152.51036242
                ],
                [
                    "2021-08-02",
                    142274676.34042487
                ],
                [
                    "2021-08-03",
                    142702878.81621873
                ],
                [
                    "2021-08-04",
                    143117080.5878074
                ],
                [
                    "2021-08-05",
                    143517606.62070456
                ],
                [
                    "2021-08-06",
                    143904785.10725814
                ],
                [
                    "2021-08-07",
                    144278946.44475192
                ],
                [
                    "2021-08-08",
                    144640422.28073844
                ],
                [
                    "2021-08-09",
                    144989544.6250685
                ],
                [
                    "2021-08-10",
                    145326645.02715394
                ],
                [
                    "2021-08-11",
                    145652053.81665978
                ],
                [
                    "2021-08-12",
                    145966099.4058389
                ],
                [
                    "2021-08-13",
                    146269107.65169534
                ],
                [
                    "2021-08-14",
                    146561401.27594027
                ],
                [
                    "2021-08-15",
                    146843299.34041932
                ],
                [
                    "2021-08-16",
                    147115116.77550077
                ],
                [
                    "2021-08-17",
                    147377163.9588563
                ],
                [
                    "2021-08-18",
                    147629746.34206936
                ],
                [
                    "2021-08-19",
                    147873164.12249988
                ],
                [
                    "2021-08-20",
                    148107711.95781413
                ],
                [
                    "2021-08-21",
                    148333678.7205845
                ],
                [
                    "2021-08-22",
                    148551347.29036817
                ],
                [
                    "2021-08-23",
                    148760994.38075438
                ],
                [
                    "2021-08-24",
                    148962890.39893192
                ],
                [
                    "2021-08-25",
                    149157299.3354018
                ],
                [
                    "2021-08-26",
                    149344478.68153405
                ],
                [
                    "2021-08-27",
                    149524679.3727479
                ],
                [
                    "2021-08-28",
                    149698145.75519064
                ],
                [
                    "2021-08-29",
                    149865115.57388946
                ]
            ],
            "hoverAnimation": true,
            "label": {
                "show": false,
                "position": "top",
                "margin": 8
            },
            "lineStyle": {
                "show": true,
                "width": 1,
                "opacity": 1,
                "curveness": 0,
                "type": "solid"
            },
            "areaStyle": {
                "opacity": 0
            },
            "zlevel": 0,
            "z": 0
        }
    ],
    "legend": [
        {
            // "top":'8%',
            "data": [
                ""
            ],
            "selected": {
                "": true
            },
            "show": true,
            "padding": 5,
            "itemGap": 10,
            "itemWidth": 25,
            "itemHeight": 14
        }
    ],
    "tooltip": {
        "show": false,
        "trigger": "item",
        "triggerOn": "mousemove|click",
        "axisPointer": {
            "type": "line"
        },
        "showContent": true,
        "alwaysShowContent": false,
        "showDelay": 0,
        "hideDelay": 100,
        "textStyle": {
            "fontSize": 14
        },
        "borderWidth": 0,
        "padding": 5
    },
    "xAxis": [
        {
            "axisLine": {
                "lineStyle": {
                    "color": '#fff'
                }
            },
            "type": "category",
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "minInterval": 0,
            "splitLine": {
                "show": false,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            },
            "data": [
                "2021-07-11",
                "2021-07-12",
                "2021-07-13",
                "2021-07-14",
                "2021-07-15",
                "2021-07-16",
                "2021-07-17",
                "2021-07-18",
                "2021-07-19",
                "2021-07-20",
                "2021-07-21",
                "2021-07-22",
                "2021-07-23",
                "2021-07-24",
                "2021-07-25",
                "2021-07-26",
                "2021-07-27",
                "2021-07-28",
                "2021-07-29",
                "2021-07-30",
                "2021-07-31",
                "2021-08-01",
                "2021-08-02",
                "2021-08-03",
                "2021-08-04",
                "2021-08-05",
                "2021-08-06",
                "2021-08-07",
                "2021-08-08",
                "2021-08-09",
                "2021-08-10",
                "2021-08-11",
                "2021-08-12",
                "2021-08-13",
                "2021-08-14",
                "2021-08-15",
                "2021-08-16",
                "2021-08-17",
                "2021-08-18",
                "2021-08-19",
                "2021-08-20",
                "2021-08-21",
                "2021-08-22",
                "2021-08-23",
                "2021-08-24",
                "2021-08-25",
                "2021-08-26",
                "2021-08-27",
                "2021-08-28",
                "2021-08-29"
            ]
        }
    ],
    "yAxis": [
        {
            "axisLine": {
                "lineStyle": {
                    "color": '#fff'
                }
            },
            "type": "value",
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "axisTick": {
                "show": true,
                "alignWithLabel": false,
                "inside": false
            },
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            }
        }
    ],
    // "title": [
    //     {
    //         "padding": 5,
    //         "itemGap": 10
    //     }
    // ]
};
        chart_af5c74274f024bd5b8194b83c8039aa6.setOption(option_af5c74274f024bd5b8194b83c8039aa6);
    }
});

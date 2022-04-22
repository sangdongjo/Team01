<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function() {
	
	// 컨트롤러에서 직렬화된 데이터를 바로 자바스크립트 변수에 지정
	var serverDatas = ${strCancer};
	var datas = [];
	
	/* 대장암 발병률이 높은 30~80대 대장암 발병 현황 데이터를 만든다.
	 * Controller에서 int형 배열을 직렬화 했으므로 자바스크립트 배열로 데이터가
	 * 전달되기 때문에 jQuery의 each() 함수에서 바로 사용할 수 있다.  
	 **/
	$(serverDatas).each(function(index, value) {
		if(index >= 2 && index <= 7) {
			console.log(index + " - " + value);
			datas.push(value);
		}
	});
	
	zingchart.THEME="classic";
	var cancerConfig = {
	    "background-color":"#ecf2f6",
	    "graphset":[
	        {	// 세로 바 차트
	            "type":"bar",
	            "background-color":"#fff",
	            "border-color":"#dae5ec",
	            "border-width":"1px",
	            "height":"30%",
	            "width":"96%",
	            "x":"2%",
	            "y":"3%",
	            "title":{
	                "margin-top":"7px",
	                "margin-left":"9px",
	                "font-family":"Arial",
	                "text":"연령별 대장암 발병 현황",
	                "background-color":"none",
	                "shadow":0,
	                "text-align":"left",
	                "font-size":"11px",
	                "font-weight":"bold",
	                "font-color":"#707d94"
	            },
	            "scale-y":{
	                "values":"0:6000:1000",
	                "max-ticks":4,
	                "max-items":4,
	                "line-color":"none",
	                "tick":{
	                    "visible":false
	                },
	                "item":{
	                    "font-color":"#8391a5",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "padding-right":"5px"
	                },
	                "guide":{
	                    "rules":[
	                        {
	                          "rule":"%i == 0",
	                          "line-width":0
	                        },
	                        {
	                          "rule":"%i > 0",
	                          "line-style":"solid",
	                          "line-width":"1px",
	                          "line-color":"#d2dae2",
	                          "alpha":0.4 
	                        }
	                    
	                    ]
	                }
	            },
	            "scale-x":{
	                "items-overlap":true,
	                "max-items":9999,	// 세로 바 차트 라벨
	                "values":["10대", "20대", "30대", "40대", "50대", "60대", 
	                				"70대", "80대", "90대", "100대"],
	                "offset-y":"1px",
	                "line-color":"#d2dae2",
	                "item":{
	                    "font-color":"#8391a5",
	                    "font-family":"Arial",
	                    "font-size":"11px",
	                    "padding-top":"2px"
	                },
	                "tick":{
	                    "visible":false,
	                    "line-color":"#d2dae2"
	                },
	                "guide":{
	                    "visible":false
	                }
	            },
	            "plotarea":{
	                "margin":"45px 20px 38px 45px"
	            },
	            "plot":{
	                "bar-width":"33px",
	                "hover-state":{
	                    "visible":false
	                },
	                "animation":{
	                    "delay":500,
	                    "effect":"ANIMATION_SLIDE_BOTTOM"
	                },
	                "tooltip":{
	                    "font-color":"#fff",
	                    "font-family":"Arial",
	                    "font-size":"11px",
	                    "border-radius":"6px",
	                    "shadow":false,
	                    "padding":"5px 10px",
	                    "background-color":"#707e94"
	                }
	            },
	            "series":[
	                {
	                    "values": ${strCancer},	// 세로 바 차트 데이터
	                    "styles":[
	                        {
	                            "background-color":"#4dbac0"
	                        },
	                        {
	                            "background-color":"#25a6f7"
	                        },
	                        {
	                            "background-color":"#ad6bae"
	                        },
	                        {
	                            "background-color":"#707d94"
	                        },
	                        {
	                            "background-color":"#f3950d"
	                        },
	                        {
	                            "background-color":"#e62163"
	                        },
	                        {
	                            "background-color":"#4e74c0"
	                        },
	                        {
	                            "background-color":"#1dc0c2"
	                        },
	                        {
	                            "background-color":"#fec1f0"
	                        },
	                        {
	                            "background-color":"#9dc012"
	                        }
	                    ]
	                }
	            ]
	        },
	        {	// 가로 바 차트
	            "type":"hbar",
	            "background-color":"#fff",
	            "border-color":"#dae5ec",
	            "border-width":"1px",
	            "x":"2%",
	            "y":"35.2%",
	            "height":"63%",
	            "width":"30%",
	            "title":{
	                "margin-top":"7px",
	                "margin-left":"9px",
	                "text":"30대 ~ 80대 대장암 발병 현황",
	                "background-color":"none",
	                "shadow":0,
	                "text-align":"left",
	                "font-family":"Arial",
	                "font-size":"11px",
	                "font-color":"#707d94"
	            },
	            "scale-y":{
	                "line-color":"none",
	                "tick":{
	                    "visible":false
	                },
	                "item":{
	                    "visible":false
	                },
	                "guide":{
	                    "visible":false
	                }
	            },
	            "scale-x":{	// 가로 바 차트 라벨
	                "values":["30대", "40대", "50대", "60대", "70대", "80대"],
	                "line-color":"none",
	                "tick":{
	                    "visible":false
	                },
	                "item":{
	                    "width":200,
	                    "text-align":"left",
	                    "offset-x":206,
	                    "offset-y":-12,
	                    "font-color":"#8391a5",
	                    "font-family":"Arial",
	                    "font-size":"11px",
	                    "padding-bottom":"8px"
	                },
	                "guide":{
	                    "visible":false
	                }
	            },
	            "plot":{
	                "bars-overlap":"100%",
	                "bar-width":"12px",
	                "thousands-separator":",",
	                "tooltip":{
	                    "font-color":"#ffffff",
	                    "background-color":"#707e94",
	                    "font-family":"Arial",
	                    "font-size":"11px",
	                    "border-radius":"6px",
	                    "shadow":false,
	                    "padding":"5px 10px"
	                },
	                "hover-state":{
	                    "background-color":"#707e94"
	                },
	                "animation":{
	                    "delay":500,
	                    "effect":"ANIMATION_EXPAND_LEFT"
	                }
	            },
	            "plotarea":{
	                "margin":"50px 15px 10px 15px"
	            },
	            "series":[
	                {
	                    "values": datas,
	                    "z-index":2,
	                    "styles":[	                    	
	                        {
	                            "background-color":"#ad6bae"
	                        },
	                        {
	                            "background-color":"#707d94"
	                        },
	                        {
	                            "background-color":"#f3950d"
	                        },
	                        {
	                            "background-color":"#e62163"
	                        },
	                        {
	                            "background-color":"#4e74c0"
	                        },
	                        {
	                            "background-color":"#1dc0c2"
	                        }
	                    ],
	                    "tooltip-text":"%node-value"
	                },
	                {
	                    "max-trackers":0,
	                    "values":[6000, 6000, 6000, 6000, 6000, 6000],
	                    "data-rvalues": datas,
	                    "background-color":"#d9e4eb",
	                    "z-index":1,
	                    "value-box":{
	                        "visible":true,
	                        "offset-y":"-12px",
	                        "offset-x":"-54px",
	                        "text-align":"right",
	                        "font-color":"#8391a5",
	                        "font-family":"Arial",
	                        "font-size":"11px",
	                        "text":"%data-rvalues",
	                        "padding-bottom":"8px"
	                    }
	                }
	            ]
	        },
	        { // 라인 차트
	            "type":"line",
	            "background-color":"#fff",
	            "border-color":"#dae5ec",
	            "border-width":"1px",
	            "width":"64%",
	            "height":"63%",
	            "x":"34%",
	            "y":"35.2%",
	            "title":{
	                "margin-top":"7px",
	                "margin-left":"12px",
	                "text":"대장암 발병 현황",
	                "background-color":"none",
	                "shadow":0,
	                "text-align":"left",
	                "font-family":"Arial",
	                "font-size":"11px",
	                "font-color":"#707d94"
	            },
	            "plot":{
	                "animation":{
	                    "delay":500,
	                    "effect":"ANIMATION_SLIDE_LEFT"
	                }
	            },
	            "plotarea":{
	                "margin":"50px 25px 70px 46px"
	            },
	            "scale-y":{
	                "values":"0:6000:1000",
	                "line-color":"none",
	                "guide":{
	                    "line-style":"solid",
	                    "line-color":"#d2dae2",
	                    "line-width":"1px",
	                    "alpha":0.5
	                },
	                "tick":{
	                    "visible":false
	                },
	                "item":{
	                    "font-color":"#8391a5",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "padding-right":"5px"
	                }
	            },
	            "scale-x":{
	                "line-color":"#d2dae2",
	                "line-width":"2px",
	                "values":["10대", "20대", "30대", "40대", "50대", "60대", 
	                				"70대", "80대", "90대", "100대"],
	                "tick":{
	                    "line-color":"#d2dae2",
	                    "line-width":"1px"
	                },
	                "guide":{
	                    "visible":false
	                },
	                "item":{
	                    "font-color":"#8391a5",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "padding-top":"5px"
	                }
	            },
	            "legend":{
	                "layout":"x4",
	                "background-color":"none",
	                "shadow":0,
	                "margin":"auto auto 15 auto",
	                "border-width":0,
	                "item":{
	                    "font-color":"#707d94",
	                    "font-family":"Arial",
	                    "padding":"0px",
	                    "margin":"0px",
	                    "font-size":"9px"
	                },
	                "marker":{
	                    "show-line":"true",
	                    "type":"match",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "size":4,
	                    "line-width":2,
	                    "padding":"3px"
	                }
	            },
	            "crosshair-x":{
	                "lineWidth":1,
	                "line-color":"#707d94",
	                "plotLabel":{
	                    "shadow":false,
	                    "font-color":"#000",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "padding":"5px 10px",
	                    "border-radius":"5px",
	                    "alpha":1
	                },
	                "scale-label":{
	                    "font-color":"#ffffff",
	                    "background-color":"#707d94",
	                    "font-family":"Arial",
	                    "font-size":"10px",
	                    "padding":"5px 10px",
	                    "border-radius":"5px"
	                }
	            },
	            "tooltip":{
	                "visible":false
	            },
	            "series": [
	                {
	                    "values": ${strCancer},
	                    "text": "연령별 대장암 발병 현황",
	                    "line-color":"#4dbac0",
	                    "line-width":"2px",
	                    "shadow":0,
	                    "marker":{
	                        "background-color":"#fff",
	                        "size":3,
	                        "border-width":1,
	                        "border-color":"#36a2a8",
	                        "shadow":0
	                    },
	                    "palette":0
	                }
	            ]
	        }
	    ]
	};

	zingchart.render({ 
		id : 'cancerChart', 
		data : cancerConfig, 
		height: 500, 
		width: '100%' 
	});
});
</script>    
<article>	
	<h1>대장암 발병 현황</h1>
	<div id="cancerChart" class="chartDiv"></div>	
</article>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
/*
 {
	"year":[2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014],
	"open":[26,76,105,163,180,204,314,496,729,1229,2503,3961,4642,6045,9125],
	"close":[63,107,293,636,468,450,549,737,850,1260,1669,1981,1673,1225,780]
}


*/
$(function(){
	// 컨트롤러에서 직렬화된 데이터를 바로 자바스크립트 변수에 지정
	var shopData = ${shopData};	
	
	zingchart.THEME="classic";
	var coffeeShopConfig = 
	        {
	            "type": "line",
	            "background-color": "#003849",
	            "utc": true,
	            "title": {
	                "y": "7px",
	                "text": "커피숍 영업 현황",
	                "background-color": "#003849",
	                "font-size": "24px",
	                "font-color": "white",
	                "height": "25px"
	            },
	            "plotarea": {
	                "margin": "20% 8% 14% 12%",
	                "background-color": "#003849"
	            },
	            "legend": {
	                "layout": "float",
	                "background-color": "none",
	                "border-width": 0,
	                "shadow": 0,
	                "width":"75%",
	                "text-align":"middle",
	                "x":"25%",
	                "y":"10%",
	                "item": {
	                    "font-color": "#f6f7f8",
	                    "font-size": "14px"
	                }
	            },
	            "scale-x": {
	                "min-value": new Date(shopData.year[0] + "-01-01").getTime(), 
	                "shadow": 0,
	                "step": new Date(shopData.year[1] + "-01-01") 
	            				- new Date(shopData.year[0] + "-01-01"), 
	                "line-color": "#f6f7f8",
	                "tick": {
	                    "line-color": "#f6f7f8"
	                },
	                "guide": {
	                    "line-color": "#f6f7f8"
	                },
	                "item": {
	                    "font-color": "#f6f7f8"
	                },
	                "transform": {
	                    "type": "date",
	                    "all": "%Y",
	                    "guide": {
	                        "visible": false
	                    },
	                    "item": {
	                        "visible": false
	                    }
	                },
	                "label": {
	                    "visible": false
	                },
	                "minor-ticks": 0
	            },
	            "scale-y": {
	                "values": "0:10000:1000",
	                "line-color": "#f6f7f8",
	                "shadow": 0,
	                "tick": {
	                    "line-color": "#f6f7f8"
	                },
	                "guide": {
	                    "line-color": "#f6f7f8",
	                    "line-style": "dashed"
	                },
	                "item": {
	                    "font-color": "#f6f7f8"
	                },
	                "label": {
	                    "text": "Count",
	                    "font-color": "#f6f7f8"
	                },
	                "minor-ticks": 0,
	                "thousands-separator": ","
	            },
	            "crosshair-x": {
	                "line-color": "#f6f7f8",
	                "plot-label": {
	                    "border-radius": "5px",
	                    "border-width": "1px",
	                    "border-color": "#f6f7f8",
	                    "padding": "10px",
	                    "font-weight": "bold"
	                },
	                "scale-label": {
	                    "font-color": "#00baf0",
	                    "background-color": "#f6f7f8",
	                    "border-radius": "5px"
	                }
	            },
	            "tooltip": {
	                "visible": false
	            },
	            "plot": {
	                "tooltip-text": "%t views: %v<br>%k",
	                "shadow": 0,
	                "line-width": "3px",
	                "marker": {
	                    "type": "circle",
	                    "size": 3
	                },
	                "hover-marker": {
	                    "type": "circle",
	                    "size": 4,
	                    "border-width": "1px"
	                }
	            },
	            "series": [
	                {
	                    "values": shopData.open,
	                    "text": "운영중",
	                    "line-color": "#007790",
	                    "legend-marker": {
	                        "type": "circle",
	                        "size": 5,
	                        "background-color": "#007790",
	                        "border-width": 1,
	                        "shadow": 0,
	                        "border-color": "#69dbf1"
	                    },
	                    "marker": {
	                        "background-color": "#007790",
	                        "border-width": 1,
	                        "shadow": 0,
	                        "border-color": "#69dbf1"
	                    }
	                },
	                {
	                    "values": shopData.close,
	                    "text": "폐업",
	                    "line-color": "#009872",
	                    "legend-marker": {
	                        "type": "circle",
	                        "size": 5,
	                        "background-color": "#009872",
	                        "border-width": 1,
	                        "shadow": 0,
	                        "border-color": "#69f2d0"
	                    },
	                    "marker": {
	                        "background-color": "#009872",
	                        "border-width": 1,
	                        "shadow": 0,
	                        "border-color": "#69f2d0"
	                    }
	                }	                
	            ]
	        };

	zingchart.render({ 
		id : 'coffeeShopChart', 
		data : coffeeShopConfig, 
		height: 500, 
		width: 800 
	});
});
</script>    
<article>	
	<div id="coffeeShopChart" class="chartDiv"></div>
</article>
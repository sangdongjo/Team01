<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="utf-8" %>
<script>
$(function() {
	
	zingchart.THEME="classic";

	var mainConfig = {
	    "type": "wordcloud",
	    "background-color": "#FFFFFF",
	    "background-image": "resources/images/mainbg.png",
	    "title": {
	        "text": "웹 시각화 워드 클라우드 샘플",
	        "align": "left",
	        "background-color": "none",
	        "font-color": "#000000",
	        "font-size": "24px"
	    },
	    "plotarea": {
	        "margin": "15 285 0 0"
	    },
	    "options": {
	        "text": "데이터요약하기,R과Spring을연동한웹시각화,아파트시세시각화,"
	        		+ "R과Spring을연동한웹시각화,기술통계,R과Spring을연동한웹시각화,"
	        		+ "데이터전처리,기술통계,대장암환자발병현황,커피숍영업상황,연령별인구변화,"
	        		+ "커피숍영업상황,커피숍영업상황,아파트시세시각화,"
	        		+ "R과Spring을연동한웹시각화,아파트시세시각화",
	        "color-type": "palette",
	        "palette": [
	            "#1CA658",
	            "#0C401E",
	            "#F2C029",
	            "#D9981E",
	            "#8C3908"
	        ],
	        "max-items": 20,
	        "min-length": 4,
	        "aspect": "spiral",
	        "min-font-size": 14,
	        "max-font-size": 30,
	        "rotate": true
	    }
	};

	zingchart.render({ 
		id : 'mainChart', 
		data : mainConfig, 
		height: 500, 
		width: 725 
	});
	
});
</script>
<article>
	<h1>R과 Spring을 연동한 웹 시각화</h1>
	<div id='mainChart'>
		<a class="zing_url" href="https://www.zingchart.com/">Charts by ZingChart</a>
	</div>
</article>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){	

	// 컨트롤러에서 직렬화된 데이터를 바로 자바스크립트 변수에 지정
	var popData = ${popData};
	
	var popConfig ={
		 	type: "area",
		 	stacked: true,
		 	title:{
		 	  text: "연령별 인구변화",
		 	  fontColor: "#424242",
		 	  adjustLayout: true,
		 	  marginTop: 15
		 	},
		 	subtitle:{
		 	  text: "",
		 	  fontColor: "#616161",
		 	  adjustLayout: true,
		 	  marginTop: 45
		 	},
		 	plot:{
		 	  aspect: "spline",
		 	  alphaArea: 0.6
		 	},
		 	plotarea:{
		 	  margin: "dynamic"
		 	},
		 	tooltip:{visible:false},
		 	scaleY:{
		 	  short:true,
		 	  shortUnit:'k',
		 	  lineColor: "#AAA5A5",
		 	  tick:{
		 	    lineColor: "#AAA5A5"
		 	  },
		 	  item:{
		 	    fontColor: "#616161",
		 	    paddingRight: 5
		 	  },
		 	  guide:{
		 	    lineStyle: "dotted",
		 	    lineColor: "#AAA5A5"
		 	  },
		 	  label:{
		 	    text: "연령대",
		 	    fontColor: "#616161"
		 	  }
		 	},
		 	scaleX:{
		 	  lineColor: "#AAA5A5",
		 	  labels: popData.time,
		 	  tick:{
		 	    lineColor: "#AAA5A5"
		 	  },
		 	  item:{
		 	    fontColor: "#616161",
		 	    paddingTop: 5
		 	  },
		 	  label:{
		 	    text: "년도",
		 	    fontColor: "#616161"
		 	  }
		 	},
		 	crosshairX:{
		 	  lineColor: "#AAA5A5",
		 	  plotLabel:{
		 	    backgroundColor:"#EBEBEC",
		 	    borderColor: "#AAA5A5",
		 	    borderWidth: 2,
		 	    borderRadius: 2, 	
		 	    thousandsSeparator:',',
		 	    fontColor:'#616161'
		 	  },
		 	  scaleLabel:{
		 	    backgroundColor: "#EBEBEC",
		 	    borderColor: "#AAA5A5",
		 	    fontColor: "#424242"
		 	  }
		 	},
			series : [
				{
					values : popData.age0Group,
					text: "0s",
					backgroundColor: "#4CAF50",
					lineColor: "#4CAF50",
					marker:{
					  backgroundColor: "#4CAF50",
					  borderColor: "#4CAF50"
					}
				},
				{
					values : popData.age10Group,
					text: "10s",
					backgroundColor: "#E53935",
					lineColor: "#E53935",
					marker:{
					  backgroundColor: "#E53935",
					  borderColor: "#E53935"
					}
				},
				{
					values : popData.age20Group,
					text: "20s",
					backgroundColor: "#00BCD4",
					lineColor: "#00BCD4",
					marker:{
					  backgroundColor: "#00BCD4",
					  borderColor: "#00BCD4"
					}
				},
				{
					values : popData.age30Group,
					text: "30s",
					backgroundColor: "#e62163",
					lineColor: "#e62163",
					marker:{
					  backgroundColor: "#e62163",
					  borderColor: "#e62163"
					}
				},
				{
					values : popData.age40Group,
					text: "40s",
					backgroundColor: "#ad6bae",
					lineColor: "#ad6bae",
					marker:{
					  backgroundColor: "#ad6bae",
					  borderColor: "#ad6bae"
					}
				},
				{
					values : popData.age50Group,
					text: "50s",
					backgroundColor: "#707d94",
					lineColor: "#707d94",
					marker:{
					  backgroundColor: "#707d94",
					  borderColor: "#707d94"
					}
				},
				{
					values : popData.age60Group,
					text: "60s",
					backgroundColor: "#f3950d",
					lineColor: "#f3950d",
					marker:{
					  backgroundColor: "#f3950d",
					  borderColor: "#f3950d"
					}
				},
				{
					values : popData.age70Group,
					text: "70s",
					backgroundColor: "#4e74c0",
					lineColor: "#4e74c0",
					marker:{
					  backgroundColor: "#4e74c0",
					  borderColor: "#4e74c0"
					}
				},
				{
					values : popData.age80Group,
					text: "80s",
					backgroundColor: "#9dc012",
					lineColor: "#9dc012",
					marker:{
					  backgroundColor: "#9dc012",
					  borderColor: "#9dc012"
					}
				},
				{
					values : popData.age90Group,
					text: "90s",
					backgroundColor: "#1dc0c2",
					lineColor: "#1dc0c2",
					marker:{
					  backgroundColor: "#1dc0c2",
					  borderColor: "#1dc0c2"
					}
				}				
			]
		};

		zingchart.render({ 
			id : 'popChart', 
			data : popConfig, 
			height: '600', 
			width: '1000' 
		});
});
</script>    
<article>	
	<div id="popChart" class="chartDiv"></div>
</article>
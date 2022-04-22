<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div id="logo">		
		<a href="${ pageContext.servletContext.contextPath }/">
		<img src="https://via.placeholder.com/176x67" alt="Books2U" width="176" 
			height="67" /></a>
	</div>			
	<div id="header_link">
		<ul>
			<li>					
				<a href='cancer'>대장암발병현황</a>
			</li>						
			<li>
				<a href="coffeeShop">커피숍영업현황</a>
			</li>
			<li>
				<a href="popTimeSeries">연령별 인구변화</a>
			</li>
			<li>
				<a href="http://www.zingchart.com" target="_blank">	zingchart</a>
			</li>					
			<li>					
				<a href="https://canvasjs.com" target="_blank">canvasjs</a>
			</li>
			<li class="no_line">
				<a href="http://www.d3js.org" target="_blank">D3.js</a>
			</li>
		</ul>
	</div>
</header>
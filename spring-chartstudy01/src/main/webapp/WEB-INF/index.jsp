<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>웹 시각화</title>
<!--
	WEB-INF/spring/appServlet/servlet-context.xml에서 정적 리소스와
	관련된 url 맵핑을 아래와 같이 	설정했기 때문에 css의 위치를 
	"resources/css/index.css"와 같이 지정해야 한다.
	<mvc:resources mapping="/resources/**" location="/resources/" />
-->
<link rel="stylesheet" type="text/css" href="resources/css/index.css" />

<!-- jQuery 참조 -->
<script src="resources/js/jquery-1.12.1.min.js"></script>

<!-- zingchart 라이브러리 참조 -->	
<script src="https://cdn.zingchart.com/zingchart.min.js"></script>
</head>
<body>
	<!--
		이 페이지는 웹 템플릿 페이지로 include 지시자를 사용해 header와 foot
		페이지를 지정하고 동적으로 변화되는 content 페이지는 표준 액션을 사용했다.  
	 -->
	<%@ include file="template/header.jsp" %>
	<jsp:include page="${ param.body }" />
	<%@ include file="template/footer.jsp" %>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
  
  <body>
  <jsp:include page="../Top.jsp"></jsp:include>
  		
	
		  <ul>
		  	<s:forEach var="i" items="${list}" > 
		          		<li style="display: table-cell;">
           			<div style="margin-left: 10px; margin-top: 30px;">
		          			<!--   <a href=""><img src="images/MianLIst/e1.png"></a> -->   
		          				 <a href=""><img src="/Shop_front/images/MianLIst/${i.goodsUrl}"/></a> 
		                        <h5>
		                           <a href="">${i.goodsName}</a>
		                        </h5>
		                        <p>${i.goodsIntroduce}</p>
		                        <p class="migou-p">
		                           <span class="migou-span">${i.marketPrice}元 </span><del></del>
		                        </p>                      
          		
           </s:forEach>
           </div>
          		</li><br/>
    
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
</html>
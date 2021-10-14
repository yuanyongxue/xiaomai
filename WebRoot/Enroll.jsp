<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
<title>注册</title>
<link rel="stylesheet" media="screen" href="/Shop_front/css/Enroll/css.css" />
</head>
<div style="display:none">
	<a href="http://mathiasbynens.be/demo/jquery-size" target="_blank" data-mce-href="http://mathiasbynens.be/demo/jquery-size"></a>
</div>
<form id="msform" action="/Shop_front/getEnroll" method="post">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">第一步</li>
		<li>第二步</li>
		<li>第三步</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		手机号：<input type="text" name="email" placeholder="请输入手机号" />
		验证：<input type="verify" placeholder="请输入验证码" />
		<input type="button" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Your basic information</h2>
		<h3 class="fs-subtitle">This is step 2</h3>
		用户名：<input type="text" name="username" placeholder="请输入用户名" />
		密码：<input type="text" placeholder="请输入密码" />
		确认密码：<input type="text" name="Password" placeholder="请确定密码" />
		验证邮箱：<input type="text" name="Emails" placeholder="请输入邮箱" />
		<input type="button" class="previous action-button" value="上一步" />
		<input type="submit" class="next action-button" value="注册完成" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">congratulations</h2>
		<h3 class="fs-subtitle">registration complete！</h3>
		<h1>注册完成！</h1>
		<input style="background: #27AE60;color: white;" value="确认"/>
	</fieldset>
</form>
<script src="/Shop_front/js/Enroll/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/Shop_front/js/Enroll/jquery.easing.min.js" type="text/javascript"></script>
<script src="/Shop_front/js/Enroll/jQuery.time.js" type="text/javascript"></script>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>

<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
	Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
	<a href="http://cooco.net.cn/" title="组卷网">组卷网</a>
</div>
</body>
<script type="text/javascript">
	$(function(){
		var num = '${num}';
		
	});
</script>
</html>
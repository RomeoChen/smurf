<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>


<style type="text/css">
	h1{text-align: center;}
	#qrcode{margin: auto; width:256px; height:256px;}
</style>

</head>
<body>
	<div>
		<h1>提交成功！</h1>
		<h1>已生成您的专属二维码</h1>
	</div>
	<div id="qrcode"></div>
	<script>
		jQuery('#qrcode').qrcode("this plugin is great");
	</script>
</body>
</html>
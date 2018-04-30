<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<base href="<%=basePath%>">
<title>人员信息录入</title>

<!-- Bootstrap -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
#whole {
	text-align: center;
}

table {
	width: 80%;
	margin: 20px auto;
}

table tr {
	height: 40px;
}

table tr td{
	margin:auto;
	padding:12px;
}
.month {
	margin: 10px;
}

div.work {
	background-color: skyblue;
	padding: 10px;
	margin: 10px;
	border-radius: 25px;
}

#button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	border-radius: 8px;
}
}
</style>
</head>
<body>
	<div id="whole">
		<h1>人员信息录入</h1>
		<form class="form-horizontal" action="user/addUser">
			<table>
			<tbody style="margin:auto">
				<tr id="name_tr">
					<td>姓&nbsp;&nbsp;&nbsp;&nbsp;名</td>
					<td colspan="2"><input id="name" type="text"></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;&nbsp;别</td>
					<td><input type="radio" name="sex" value="男">男</td>
					<td><input type="radio" name="sex" value="女">女</td>
				</tr>
				<tr>
					<td>身份证</td>
					<td colspan="2"><input id="iDnumber" type="text"></td>
				</tr>
				<tr>
					<td>籍&nbsp;&nbsp;&nbsp;&nbsp;贯</td>
					<td><select name="district_1">
							<option value="湖南">湖南</option>
							<option value="湖北">湖北</option>
							<option value="北京">北京</option>
							<option value="上海">上海</option>
					</select>省/市</td>
					<td><select name="district_2">
							<option value="杭州">杭州</option>
							<option value="武汉">武汉</option>
							<option value="广州">广州</option>
							<option value="上海">上海</option>
					</select>市</td>
				</tr>
				</tbody>
			</table>
			<div>
				<lable>工作经历</lable>
				<div class="work">
					<div class="month">
						<input type="month" value="2018-04" name="company_1_begin"/> 至 <input type="month"
							value="2018-04" name="company_1_end"/>
					</div>
					<div class="month">
						在<input type="text" id="company_1" size="9" />公司 担任<input
							type="text" id="job_1" size="9">职位
					</div>
				</div>
				<div class="work">
					<div class="month">
						<input type="month" value="2018-04" name="company_2_begin"/> 至 <input type="month"
							value="2018-04" name="company_2_end"/>
					</div>
					<div class="month">
						在<input type="text" id="company_2" size="9" />公司 担任<input
							type="text" id="job_2" size="9">职位
					</div>
				</div>
			</div>
			<input id="button" type="submit" value="提交">
		</form>
	</div>


	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
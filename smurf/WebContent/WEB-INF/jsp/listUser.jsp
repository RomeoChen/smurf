<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<title>用户列表</title>

<script type="text/javascript">  
    function del(id){  
        $.get("<%=basePath%>user/delUser?id=" + id, function(data) {
			if ("success" == data.result) {
				alert("删除成功");
				window.location.reload();
			} else {
				alert("删除失败");
			}
		});
	}
</script>
</head>

<body>
	<h6>
		<a href="<%=basePath%>user/toAddUser">添加用户</a>
	</h6>
	<table align='center' border='1' cellspacing='0'>
		<tbody>
			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>性别</td>
				<td>身份证号</td>
				<td>籍贯</td>
			</tr>
			<c:if test="${!empty list }">
				<c:forEach items="${list}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.sex }</td>
						<td>${user.iDnumber}</td>
						<td>${user.district}</td>
						<td>
							<a href="<%=basePath%>user/getUser?id=${user.id}">编辑</a>
							<a href="javascript:del('${user.id }')">删除</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>

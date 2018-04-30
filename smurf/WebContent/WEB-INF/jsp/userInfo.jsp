<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>user/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<form class="form-horizontal" action="toUpdateUser"
					method="POST">
					<div class="control-group">
						<label class="control-label">姓名</label>
						<div class="controls">
							<input type="text" name="sex" value=${user.name } />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">性别</label>
						<div class="controls">
							<input type="radio" name="sex" value="男">男 
							<input type="radio" name="sex" value="女">女
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">身份证号</label>
						<div class="controls">
							<input type="text" name="iDnumber" value=${user.iDnumber } />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">籍贯</label>
						<div class="controls">
							<select name="district">
								<option value="湖南">湖南</option>
								<option value="湖北">湖北</option>
								<option value="北京">北京</option>
								<option value="上海">上海</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button class="btn" type="submit">更改</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
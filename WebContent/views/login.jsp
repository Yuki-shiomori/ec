<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ice Queen</title>
</head>
<style>
	body{
		background-color:#FEEDDC;
	}
	a {
		color: black;
		text-decoration: none;
	}
	
	h1,p,div,a{
		text-align:center;
	}
	
</style>
<body>
	<%@include file="menu.jsp"%>


	<form action="../jp.co.aforce.servlets/login" method="post">
		<h1>Login</h1>

		<p>
			ID :<input type="text" name="user_id" required>
		</p>

		<p>
			パスワード :<input type="password" placeholder="半角英数字8文字" name="user_password"
				required>
		</p>

		<p>
			<input type="submit" value="ログイン">
		<div>
			<a href="../views/newlogin.jsp">新規ログイン作成</a>
		</div>

		<div>
			<a href="../views/adminlogin.jsp">Administrator</a>
		</div>

		<!-- エラー -->
		<p>${error}</p>

	</form>


</body>
</html>
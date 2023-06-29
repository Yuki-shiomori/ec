<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrator</title>
</head>
<style>
	body{
		background-color:#85CBD9;
	}
	
	a {
		color: black;
		text-decoration: none;
	}
	
	h1,p{
		text-align:center;
	}
</style>
<body>
<%@include file="menu.jsp"%>

<form action="../jp.co.aforce.servlets/adminlogin" method="post">
<h1>Login</h1>

<p>ID :<input type="text" name="admin_id" required></p>

<p>パスワード :<input type="password" placeholder="半角数字8文字" name="admin_password" required></p>

<p><input type="submit" value="ログイン">

<!-- エラー -->
<p>${error}</p>


</body>
</html>
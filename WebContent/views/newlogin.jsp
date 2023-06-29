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
	
	h1,p,div,h2{
		text-align:center;
	}
</style>
<body>

<form action="" method="">
<h1>新規ログイン</h1>

<h2>名前</h2>
<p> <input type="text" name="user_name" required></p>


<h2>パスワード</h2>
<p><input type="password" placeholder="半角英数字8文字" name="user_password"></p>

<h2>住所</h2>
<p><input type="text" name="address" required></p>

<h2>メールアドレス</h2>
<p><input type="email" name="mail_address"></p>


</form>

<div>
<input type="submit"name="set"  value="登録">
<input type="reset" name="reset" value="リセット">
<a href="../views/top.jsp"><input type="submit" name="return" value="戻る">
</div>




</body>
</html>
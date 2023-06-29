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
	<%@include file="adminmenu.jsp"%>
	<h1>新商品の登録</h1>

	<form action="" metod="">
		<p>登録する商品を入力してください。</p>

		<p>
			商品ID:<input type="text" name="item_id">
		</p>
		<br>
		<p>
			商品名:<input type="text" name="item_name">
		</p>
		<br>
		<p>
			商品価格:<input type="text" name="item_price">円
		</p>
		<br>
		<p>
			商品画像:<input type="file" name="item_img">
		</p>
		<br>
		<p>
			<input type="submit" value="登録">
		</p>

	</form>
</body>
</html>
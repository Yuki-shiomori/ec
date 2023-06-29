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
	
	h1,p,img{
		text-align:center;
	}
	img{
	border-radius:6px;
	}
</style>
<body>
	<main>
		<%@include file="menu.jsp"%>
		<h1>Contact</h1>

		<p>Email:bcbcbiu.ncjni@bcbc.com | Tel:070-0915-9401</p>
		<p><a href="https://instagram.com/icequeen.2023?igshid=MzNlNGNkZWQ4Mg==">
			<img src="../img/2023-06-27 (2).png" width="30px" alt="写真">
		</a></p>

		<p>
			<img src="../img/OIP (1).jpg" width="500px" alt="写真">
		</p>
	</main>
	<form action="../jp.co.aforce.servlets/contact" method="post">
		<p>
			氏名:<input type="text" name="name" required>
		</p>

		<p>
			メールアドレス:<input type="email" name="address" required>
		</p>

		<p>お問い合わせ内容</p>
		<p>
			<textarea name="review" cols="30" rows="5"></textarea>
		</p>

		<p>メルマガ</p>
		<p>
			<input type="checkbox" name="mail">おすすめ商品のメールを受け取る。
		</p>

		<p>
			<input type="submit" name="送信">
		</p>

	</form>



</body>
</html>
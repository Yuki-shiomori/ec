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
	 	text-align:center;
		color: black;
		text-decoration: none;
	}
	
	footer{
	text-align:center;
	background-color:#FF307F;
	}
	
	h1,h2,h4,p,img{
		text-align:center;
	}
	img{
	border-radius:6px;
	}
	
	@keyframes shake {
  0% { transform: translateY(0); }
  25% { transform: translateY(-5px); }
  75% { transform: translateY(5px); }
  100% { transform: translateY(0); }
}

h4 {
  animation: shake 2s infinite;
}
	.photo {
  box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 影の設定 */
}
</style>
<body>
	<%@include file="menu.jsp"%>
	<main>
		<h1>IceQueen</h1>
		<p>
			<img src="../img/th (1).jfif" width="500px" alt="写真" class="photo">
		</p>

		<h2>-MESSAGE-</h2>

		<p>
			Ice Queenはアイス専門店です。<br> 可愛くて美味しいアイスや体に優しいアイスキャンディー等を取り扱っています。<br>
			ぜひ、手にとってみて下さい。
		</p>



		
  <h4>NEWS</h4>
  <p>2023/06/xx ○○を更新しました。</p>


	</main>
	</div>

	<footer>
		<p>Copyright2023 IceQueen .</p>
	</footer>
</body>
</html>
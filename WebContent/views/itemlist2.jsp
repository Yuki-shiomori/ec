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
	
	h1{
		text-align:center;
	}
	img{
	border-radius:6px;
}
th {
width: 150px;
 height: 100px;
 border: solid 1px black;
 margin: auto;
 border: 1px solid #999;
 background: #f2f2f2;
}
table{
	box-shadow:0 0 10px 0 #ccc;
}

th,td{
	text-align:center;
	border-top-width: 2px;
        border-bottom-style: double;
        border-bottom-width: 4px;
        padding: 5px 0;
}
</style>
<body>
 <%@include file="adminmenu.jsp"%>
	
	
	<h1>商品一覧</h1>
	

	
<div style="display: flex; justify-content: center;">
<table>
  <tr style="text-align: center;">
    <th>商品ID</th>
    <th>商品名</th>
    <th>価格(税込み)</th>
    <th>在庫数</th>
  </tr>

		<tr>
			<td style="text-align: center;">000001 <img src="../img/7013_preview.v1.jpg" width="100px"></td>
			<td>アイスクリーム7本セット</td>
			<td>700円</td>
			<td>10箱</td>
		</tr>

		<tr>
			<td style="text-align: center;">000002 <img
				src="../img/STDM4690_e73b1948-4853-4e62-8ccb-ee9d15d73438.webp"
				width="100px"></td>
			<td>低糖質アイスキャンディー6本セット</td>
			<td>600円</td>
			<td>10箱</td>

		</tr>

		<tr>
		<td style="text-align: center;">000003 <img	src=" ../img/OIP.jpg"width="100px"></td>
			<td>牛乳アイスカップ10個セット</td>
			<td>1000円</td>
			<td>10箱</td>
		</tr>
</table>
</div>



</body>
</html>
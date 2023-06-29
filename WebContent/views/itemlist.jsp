<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>

body{
  background-color:#EECBC3;
}

a {
		color: black;
		text-decoration: none;
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

#myTable {
  margin: 0 auto; /* テーブルを水平方向に中央に配置 */
  text-align: center; /* テキストを水平方向に中央に配置 */
}

#myTable td, #myTable th {
  vertical-align: middle; /* 
  
  #myTable img {
      width: 100px;
      height: auto;
      cursor: pointer;
      
    }

    #zoomedImage {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      max-width: 90%;
      max-height: 90%;
      z-index: 9999;
      }
      
</style>
<meta charset="UTF-8">

<title>Ice Queen</title>
</head>

<body>
 
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@include file="header1.jsp"%>
	
	<h1>商品一覧</h1>
	<p>キーワードを入力してください。</p>
	<form action="../jp.co.aforce.servlets/itemsearch" method="post">
		<input type="text" name="keyword" placeholder="キーワード"> <input type="submit"
			value="検索">
	</form>

	<p>商品を選んで下さい。<br>
		*画像はイメージです。画像をクリックすると下の方で大きく見れます。<br>
		*商品IDと価格を押すと順番が変わります。<br>
		*1箱、○○本or○○個入り</p>
	

<table id="myTable">
  <tr>
    <th onclick="sortTable(0)">商品ID</th>
    <th onclick="sortTable(1)">商品名</th>
    <th onclick="sortTable(2)">価格(税込み)</th>
    <th onclick="sortTable(3)">在庫数</th>
    <th onclick="sortTable(4)">数量</th>
  </tr>
  <form action="../jp.co.aforce.servlets/cartadd" method="post"
			id="form1">
  <tr>
   <td>000001 <img src="../img/7013_preview.v1.jpg" width="100px"></td>
				<td>アイスクリーム7本セット</td>
				<td>700円</td>
				<td>10箱</td>
				<td><select name="item_quantity" form="form1">
						<c:forEach var="i" begin="1" end="10">
							<option value="${i }">${i }</option>
						</c:forEach>
				</select>箱
				</td>
				<input type="hidden" value="700" name="item_price" form="form1">
				<input type="hidden" value="アイスクリーム7本セット" name="item_name"
					form="form1">
				<input type="hidden" value="000001" name="item_id" form="form1">
				<input type="hidden" value="../img/7013_preview.v1.jpg" width="100px" name="item_img" form="form1">
				<td><input type="submit" value="購入" name="perchase"
					form="form1"></td>
  </tr>
  </form>
  <form action="../jp.co.aforce.servlets/cartadd" method="post"
			id="form2">
  <td>000002 <img	src="../img/STDM4690_e73b1948-4853-4e62-8ccb-ee9d15d73438.webp"width="100px" ></td>
			<td>低糖質アイスキャンディー6本セット</td>
			<td>600円</td>
			<td>10箱</td>
			<td><select name="item_quantity" form="form2">
					<c:forEach var="i" begin="1" end="10">
						<option value="${i }">${i }</option>
					</c:forEach>
			</select>箱
			</td>
			<input type="hidden" value="600" name="item_price" form="form2">
			<input type="hidden" value="低糖質アイスキャンディー6本セット" name="item_name"
				form="form2">
			<input type="hidden" value="000002" name="item_id" form="form2">
			<input type="hidden" value="../img/STDM4690_e73b1948-4853-4e62-8ccb-ee9d15d73438.webp"width="100px" name="item_img" form="form2">
			<td><input type="submit" value="購入" name="perchase" form="form2"></td>
		</tr>
	</form>
		<form action="../jp.co.aforce.servlets/cartadd" method="post"
			id="form3">
		<tr>
		<td>000003 <img	src=" ../img/OIP.jpg"width="100px"></td>
			<td>牛乳アイスカップ10個セット</td>
			<td>1000円</td>
			<td>10箱</td>
			<td><select name="item_quantity" form="form3">
					<c:forEach var="i" begin="1" end="10">
						<option value="${i }">${i }</option>
					</c:forEach>
			</select>箱
			</td>
			<input type="hidden" value="1000" name="item_price" form="form3">
			<input type="hidden" value="牛乳アイスカップ10個セット" name="item_name"
				form="form3">
			<input type="hidden" value="000003" name="item_id" form="form3">
			<input type="hidden" value=" ../img/OIP.jpg" width="100px"" name="item_img" form="form3">
			<td><input type="submit" value="購入" name="perchase" form="form3"></td>
			</tr>
			</form>
</table>

<div id="zoomedImage">
    <img src="#" alt="拡大画像">
  </div>
  
<script>
function sortTable(columnIndex) {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("myTable");
  switching = true;
  while (switching) {
    switching = false;
    rows = table.rows;
    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;
      x = rows[i].getElementsByTagName("TD")[columnIndex];
      y = rows[i + 1].getElementsByTagName("TD")[columnIndex];
      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}

$(document).ready(function() {
    $("#myTable img").click(function() {
      var imgSrc = $(this).attr("src");
      $("#zoomedImage img").attr("src", imgSrc);
      $("#zoomedImage").fadeIn();
    });

    $("#zoomedImage").click(function() {
      $(this).fadeOut();
    });
  });
  



</script>



</body>
</html>
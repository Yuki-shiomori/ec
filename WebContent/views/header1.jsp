<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
 a{
 	text-align:center;
 }
</style>
<% String user_id = (String) session.getAttribute("user_id"); %>

<div style="border-bottom: 2px double black; padding: 1px; background-color:#F9DBDE;">
<p>ようこそ、<%=user_id%>さん!</p>

<a href="../views/itemlist.jsp">商品一覧</a>

<a href="../views/cart.jsp">カート</a>

<a href="../views/history.jsp">購入履歴</a>

<a href="../views/logout.jsp">ログアウト</a>
 </p>
  </div>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
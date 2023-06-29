<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
		background-color:#EECBC3;
	}
	
	hr{
		border-bottom-style: soilid;
        border-bottom-width: 4px;
        width: 100%;
	}
	a {
		color: black;
		text-decoration: none;
	}
</style>
<meta charset="UTF-8">
<title>Ice Queen</title>
</head>
<body>
<%@ page import="java.util.List" %>
<%@ page import="jp.co.aforce.beans.ItemBean" %>
<%@include file="header1.jsp" %>
	<h1>購入確認</h1>
	
	
<table>
        <% List<ItemBean> list = (List<ItemBean>)session.getAttribute("cart"); %>	
        <% int total = 0; %>
        <% if(list != null && !list.isEmpty()) { %>  
            <% for(ItemBean item : list) { %>
                <tr>
                    <td>
                   	 <%= item.getItem_id() %>
                        <input type="hidden" name="item_id" value="<%= item.getItem_id() %>">
                       
                    <td>
                        <img src="<%= item.getItem_img() %>" width="100px"> 
                    </td>
                    <td>
                        <%= item.getItem_name() %>
                    </td>
                    <td>
                        <%= item.getItem_quantity() %>個
                    </td>
                    <td>
                        <%= item.getItem_price() %>円
                    </td>
                    <td>
                        小計<% int sum = item.getItem_quantity() * item.getItem_price();
                        total += sum;%>
                        <%= sum %>円
                    </td>
                </tr>
                <tr>
                    <td colspan="6"><hr></td> <!-- 横線を追加 -->
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="6">カートは空です。</td>
            </tr>
        <% } %>
    </table>
</form>





<p>合計金額：<%=total%>円</p>

支払い方法:<%=request.getParameter("payment") %>
<form action="../views/perchace.jsp"" method="post">
<input type="submit" value="注文">	
</form>	
	
<form action="../jp.co.aforce.servlets/history" method="post">
 <input type="submit" value="購入履歴">
</form>	
	


</body>
</html>
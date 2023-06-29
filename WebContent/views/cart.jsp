<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import="java.util.List" %>
<%@page import="jp.co.aforce.beans.ItemBean" %>
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
<%@include file="header1.jsp" %>
<h1>カート</h1>

	<form action="../jp.co.aforce.servlets/cartremove" method="post">
	
    <table>
        <% List<ItemBean> list = (List<ItemBean>)session.getAttribute("cart"); %>	
        <% int total = 0; %>
        <% if(list != null && !list.isEmpty()) { %>  
            <% for(ItemBean item : list) { %>
                <tr>
                    <td>
                    	<input type="submit" name="remove_<%= item.getItem_id() %>" value="削除">
                        
                        <%= item.getItem_id() %>
                       <input type="hidden" name="item_id" value="<%= item.getItem_id() %>">
                    </td>
                    <td>
                        <img src="<%= item.getItem_img() %>" width="100px"> 
                    </td>
                    <td>
                        <%= item.getItem_name() %>
                    </td>
                    <td>
                        <%= item.getItem_quantity() %>箱
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
                <td colspan="6">空です。</td>
            </tr>
        <% } %>
    </table>
</form>


	<p>
		合計金額：<%=total%>円
	</p>
	<form action="../views/check.jsp" method="post">
		<p>
			支払い方法: <select name="payment" required>
				<option value="代引き">代引き</option>
				<option value="コンビニ払い">コンビニ払い</option>
			</select><br>
		</p>

		<p>
			<input type="submit" value="購入確認">
		</p>
	</form>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style >
	body{
		background-color:#EECBC3;
	}
	a {
		color: black;
		text-decoration: none;
	}
	
	@keyframes slide-up {
    0% {
        opacity: 0;
        transform: translateY(100%);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

</style>
<meta charset="UTF-8">
<title>Ice Queen</title>
</head>
<body >
<%@include file="header1.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="jp.co.aforce.beans.ItemBean" %>

	 <h1>商品検索結果</h1>
	
    <table>
        
        <%
            // JSPスクリプトレット内でJavaコードを記述
			try {
        String keyword = request.getParameter("keyword");
        jp.co.aforce.models.ItemDAO dao = new jp.co.aforce.models.ItemDAO();
        List<ItemBean> list = dao.search(keyword);

        // 検索結果をリストとしてrequestオブジェクトに設定
        request.setAttribute("searchResult", list);
    } catch (Exception e) {
        e.printStackTrace();
        // エラー処理などを行う場合はここに記述
    }
            // 検索結果のリストを取得
            List<ItemBean> list = (List<ItemBean>) request.getAttribute("searchResult");

            // リストの要素をループしてテーブルに表示
            for (ItemBean item : list) {
        %>
        <tr>
            <td><%= item.getItem_id() %></td>
            <td><%= item.getItem_name() %></td>
            <td><%= item.getItem_price() %>円</td>
           <img src="<%= item.getItem_img() %>" width="200px"
                style="animation: slide-up 1s ease-in-out; animation-fill-mode: forwards;">
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
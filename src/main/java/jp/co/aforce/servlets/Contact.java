package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.tools.Page;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/jp.co.aforce.servlets/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String review=request.getParameter("review");
		String mail=request.getParameter("mail");
		
		Page.header(out);
		out.println("<p>"+name+"様</p>");
		out.println("<p>"+"メールアドレス:"+address+"</p>");
		out.println("<p>ご感想ありがとうございます。</p>");
		out.println("<p>「"+review+"」</p>");
		if(mail!=null) {
			out.println("<p>メールをお送りします。</p>");
		}else {
			out.println("<p>メールをお送りしません。</p>");
		}
		out.println("<a href=\"../views/top.jsp\">戻る</a>");
		Page.footer(out);
	}

}

package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.LoginBean;
import jp.co.aforce.models.LoginDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/jp.co.aforce.servlets/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @param st 
	 * @param id 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String user_id=request.getParameter("user_id");
		String user_password=request.getParameter("user_password");
		
		
		LoginDAO dao= new LoginDAO();
		LoginBean login;
		try {
			login =dao.search(user_id,  user_password);
			if (login != null) {
			    session.setAttribute("login", login);
			    session.setAttribute("user_id", user_id); // ユーザーIDをセッションに保存
			    request.getRequestDispatcher("../views/itemlist.jsp").forward(request, response);
			} else {
			    session.setAttribute("error", "IDもしくはパスワードが違います");
			    response.sendRedirect("../views/login.jsp");
			}

		}catch (Exception e){
			e.printStackTrace();
		}
		

}
}

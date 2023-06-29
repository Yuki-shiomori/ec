package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.AdminloginBean;
import jp.co.aforce.models.AdminloginDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/jp.co.aforce.servlets/adminlogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Adminlogin() {
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
		
		String admin_id=request.getParameter("admin_id");
		String admin_password=request.getParameter("admin_password");
		
		
		AdminloginDAO dao= new AdminloginDAO();
		AdminloginBean log;
		try {
			log =dao.search(admin_id,admin_password);
			if (log != null) {
			    session.setAttribute("login", log);
			    session.setAttribute("admin_id", admin_id); // 管理者IDをセッションに保存
			    request.getRequestDispatcher("../views/adminmenu2.jsp").forward(request, response);
			} else {
			    session.setAttribute("error", "IDもしくはパスワードが違います");
			    response.sendRedirect("../views/adminlogin.jsp");
			}

		}catch (Exception e){
			e.printStackTrace();
		}
		

}
}

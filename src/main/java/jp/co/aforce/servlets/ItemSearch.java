package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.ItemBean;
import jp.co.aforce.tools.Page;

/**
 * Servlet implementation class ItemSearch
 */
@WebServlet("/jp.co.aforce.servlets/itemsearch")
public class ItemSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemSearch() {
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
		PrintWriter out=response.getWriter();
		Page.header(out);
		
		try {
			String keyword=request.getParameter("keyword");
			
			jp.co.aforce.models.ItemDAO dao=new jp.co.aforce.models.ItemDAO();
			List<ItemBean> list=dao.search(keyword);
			
			for (ItemBean i : list) {
				out.println(i.getItem_id());
				out.println(i.getItem_name());
				out.println(i.getItem_price()+"円");
				out.println("<img src="+ i.getItem_img() );
				
				 
			}
			request.getRequestDispatcher("../views/search.jsp").forward(request,response);
		}catch (Exception e) {
			e.printStackTrace(out);
		}
		Page.footer(out);
	}

}

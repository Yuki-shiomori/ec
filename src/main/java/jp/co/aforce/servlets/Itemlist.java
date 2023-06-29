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
 * Servlet implementation class Itemlist
 */
@WebServlet("/jp.co.aforce.servlets/itemlist")
public class Itemlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Itemlist() {
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
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Page.header(out);
		try {
			
			jp.co.aforce.models.ItemDAO dao=new jp.co.aforce.models.ItemDAO();
			List<ItemBean> list=(List<ItemBean>) dao;
			
			for (ItemBean i : list) {
				out.println(i.getItem_id());
				out.println("<img src="+ i.getItem_img() );
				out.println(i.getItem_name());
				out.println(i.getItem_price());
				
				
				
			}
		}catch (Exception e) {
			e.printStackTrace(out);
		}
		Page.footer(out);
		}
	
	}



package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.ItemBean;
import jp.co.aforce.tools.Page;

/**
 * Servlet implementation class Cartadd
 */
@WebServlet("/jp.co.aforce.servlets/cartadd")
public class Cartadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cartadd() {
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
		try {
		
		PrintWriter out=response.getWriter();
		Page.header(out);
	
		String item_id=request.getParameter("item_id");
		String item_img=request.getParameter("item_img");
		String item_name=request.getParameter("item_name");
		int item_price=Integer.parseInt(request.getParameter("item_price"));
		int item_quantity=Integer.parseInt(request.getParameter("item_quantity"));	
		
		HttpSession session=request.getSession();
		
		@SuppressWarnings("unchecked")
		List<ItemBean> cart=(List<ItemBean>)session.getAttribute("cart");
		if(cart==null) {
			cart=new ArrayList<ItemBean>();
		  }
		boolean flg=true;
			for(ItemBean item :cart) {
				
				if(item_id.equals(item.getItem_id())) {
					item.setItem_quantity(item.getItem_quantity()+item_quantity);
					flg=false;
				}
			  
		  }
		  if(flg) {
			  ItemBean i=new ItemBean();
				i.setItem_id(item_id);
				i.setItem_img(item_img);
				i.setItem_name(item_name);
				i.setItem_price(item_price);
				i.setItem_quantity(item_quantity);
				cart.add(i);
		  }
			
		
		
		session.setAttribute("cart", cart);
		request.setAttribute("cart", cart);
		 request.getRequestDispatcher("../views/cart.jsp").forward(request,response);
	    
		
		Page.footer(out);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}

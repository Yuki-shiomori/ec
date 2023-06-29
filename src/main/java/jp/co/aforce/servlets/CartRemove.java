package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.ItemBean;

/**
 * Servlet implementation class CartRemove
 */
@WebServlet("/jp.co.aforce.servlets/cartremove")
public class CartRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartRemove() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session=request.getSession();
    	session.removeAttribute("cart");
	}	
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    try {
	        List<ItemBean> cart = (List<ItemBean>) session.getAttribute("cart");

	        Enumeration<String> parameterNames = request.getParameterNames();
	        while (parameterNames.hasMoreElements()) {
	            String paramName = parameterNames.nextElement();
	            if (paramName.startsWith("remove_")) {
	                String itemIdToRemove = paramName.substring(7);
	                Iterator<ItemBean> iterator = cart.iterator();
	                while (iterator.hasNext()) {
	                    ItemBean item = iterator.next();
	                    if (item.getItem_id().equals(itemIdToRemove)) {
	                        iterator.remove();
	                        break;
	                    }
	                }
	            }
	        }

	        session.setAttribute("cart", cart);
	        request.setAttribute("cart", cart);
	        request.getRequestDispatcher("../views/cart.jsp").forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}

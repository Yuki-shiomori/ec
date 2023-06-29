package jp.co.aforce.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.ItemBean;

public class ItemDAO extends DAO {
		public List <ItemBean> Itemlist() throws Exception{
			Connection con=getConnection();
			
			PreparedStatement st=con.prepareStatement("select * from item");
			
			List<ItemBean> list =new ArrayList<>();
			ResultSet rs=st.executeQuery();
			
			while (rs.next()) {
				ItemBean i=new ItemBean();
				i.setItem_id(rs.getString("item_id"));
				i.setItem_name(rs.getString("item_name"));
				i.setItem_price(rs.getInt("item_price"));
				i.setItem_img(rs.getString("item_img"));
				list.add(i);
			}
				st.close();
				con.close();
				
			return list;
			
		}






//商品検索

	public List<ItemBean> search(String keyword) throws Exception {
		List<ItemBean> list=new ArrayList<>();
		
		Connection con=getConnection();
		
		PreparedStatement st=con.prepareStatement(
				"select * from item where item_name like ?");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs=st.executeQuery();
		
		while (rs.next()) {
			ItemBean i=new ItemBean();
			i.setItem_id(rs.getString("item_id"));
			i.setItem_name(rs.getString("item_name"));
			i.setItem_price(rs.getInt("item_price"));
			i.setItem_img(rs.getString("item_img"));
			list.add(i);
		}
			st.close();
			con.close();
			
			return list;
	}
}	 


package jp.co.aforce.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.AdminloginBean;

public class AdminloginDAO extends DAO {
	public AdminloginBean search(String admin_id, String admin_password) throws Exception{
		AdminloginBean log = null;
		
		Connection con = getConnection();
		PreparedStatement st;
		st = con.prepareStatement("select * from adminlogin where admin_id=? and  admin_password= ? ");
		st.setString(1, admin_id);
		st.setString(2, admin_password);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			log = new AdminloginBean();
			log.setAdmin_id(rs.getString("admin_id"));
			log.setAdmin_password(rs.getString("admin_password"));
		}
		st.close();
		con.close();
		return log;
	
		
	}	
}
	
	


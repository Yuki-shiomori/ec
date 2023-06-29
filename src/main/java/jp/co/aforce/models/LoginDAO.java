package jp.co.aforce.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.LoginBean;

public class LoginDAO extends DAO {
	public LoginBean search(String user_id, String user_password) throws Exception{
		LoginBean login = null;
		
		Connection con = getConnection();
		PreparedStatement st;
		st = con.prepareStatement("select * from login where user_id=? and  user_password= ? ");
		st.setString(1, user_id);
		st.setString(2, user_password);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			login = new LoginBean();
			login.setUser_id(rs.getString("user_id"));
			login.setUser_password(rs.getString("user_password"));
		}
		st.close();
		con.close();
		return login;
	
		
	}	
}
	
	


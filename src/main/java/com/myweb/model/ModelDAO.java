package com.myweb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.myweb.common.JDBCUtil;
import com.myweb.user.UserDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;


public class ModelDAO {

	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
//	public ModelDTO getModel(ModelDTO vo) {
//		ModelDTO model = null;
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(CUST_GET);
//			stmt.setString(1, vo.getCust_id());
//			stmt.setString(2, vo.getCust_pw());
//			rs = stmt.executeQuery();
//			if (rs.next()) {
//				user = new UserDTO();
//				user.setCust_id(rs.getString("cust_id"));
//				user.setCust_pw(rs.getString("cust_pw"));
//				user.setCust_name(rs.getString("cust_name"));
//				user.setCust_email(rs.getString("cust_email"));
//				user.setCust_tel(rs.getString("cust_tel"));
//				user.setCust_address(rs.getString("cust_address"));
//				user.setCust_gender(rs.getString("cust_gender"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return user;
//	}
}
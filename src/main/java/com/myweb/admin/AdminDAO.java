package com.myweb.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.myweb.common.JDBCUtil;
import com.myweb.user.UserDTO;

public class AdminDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String ADMIN_GET = "select * from admin where admin_id=? and admin_pw=?";
	private final String ADMIN_UPDATE = "update hyundaicar.admin set admin_id=?, admin_pw=?, admin_name=?, phone=?";
	private final String ADMIN_LIST = "select * from hyundaicar.admin ";
	
	public AdminDTO getAdmin(AdminDTO ad) {
		AdminDTO admin = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(ADMIN_GET);
			stmt.setString(1, ad.getAdmin_id());
			stmt.setString(2, ad.getAdmin_pw());
			rs = stmt.executeQuery();

			if (rs.next()) {
				admin = new AdminDTO();
				admin.setAdmin_id(rs.getString("admin_id"));
				admin.setAdmin_pw(rs.getString("admin_pw"));
				admin.setAdmin_name(rs.getString("admin_name"));
				admin.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return admin;
	}

	public List<AdminDTO> getAdminList(){
		List<AdminDTO> adminList = new ArrayList<AdminDTO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(ADMIN_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				AdminDTO ad = new AdminDTO();
				ad.setAdmin_id(rs.getString("admin_id"));
				ad.setAdmin_pw(rs.getString("admin_pw"));
				ad.setAdmin_name(rs.getString("admin_name"));
				ad.setPhone(rs.getString("phone"));
				
				adminList.add(ad);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return adminList;
	}

	public void updateAdmin(AdminDTO ad) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(ADMIN_UPDATE);
			stmt.setString(1, ad.getAdmin_id());
			stmt.setString(2, ad.getAdmin_pw());
			stmt.setString(3, ad.getAdmin_name());
			stmt.setString(4, ad.getPhone());
			
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
}
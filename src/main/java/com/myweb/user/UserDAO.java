package com.myweb.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.myweb.board.BoardDTO;
import com.myweb.common.JDBCUtil;

public class UserDAO {

	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	private final String CUST_INSERT = "insert into customer( cust_id, cust_pw, cust_name, cust_email, cust_tel, cust_address, cust_gender ) values( ?,?,?,?,?,?,? )";
	private final String CUST_UPDATE = "update customer set cust_id=?, cust_pw=?, cust_name=?, cust_email=?, cust_tel=?, cust_address=?, cust_gender=?";
	private final String CUST_GET = "select * from customer where cust_id=? and cust_pw=?";
	private final String CUST_LIST = "select * from customer ";
	
	//로그인
	public UserDTO getUser(UserDTO vo) {
		UserDTO user = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(CUST_GET);
			stmt.setString(1, vo.getCust_id());
			stmt.setString(2, vo.getCust_pw());
			rs = stmt.executeQuery();
			if (rs.next()) {
				user = new UserDTO();
				user.setCust_id(rs.getString("cust_id"));
				user.setCust_pw(rs.getString("cust_pw"));
				user.setCust_name(rs.getString("cust_name"));
				user.setCust_email(rs.getString("cust_email"));
				user.setCust_tel(rs.getString("cust_tel"));
				user.setCust_address(rs.getString("cust_address"));
				user.setCust_gender(rs.getString("cust_gender"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
	
	// 회원 목록 조회
	public List<UserDTO> getUserList(){
		List<UserDTO> userList = new ArrayList<UserDTO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(CUST_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				UserDTO us = new UserDTO();
				us.setCust_id(rs.getString("cust_id"));
				us.setCust_pw(rs.getString("cust_pw"));
				us.setCust_name(rs.getString("cust_name"));
				us.setCust_email(rs.getString("cust_email"));
				us.setCust_tel(rs.getString("cust_tel"));
				us.setCust_address(rs.getString("cust_address"));
				us.setCust_gender(rs.getString("cust_gender"));
				
				userList.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return userList;
	}

	public void updateBoard(UserDTO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(CUST_UPDATE);
			stmt.setString(1, vo.getCust_id());
			stmt.setString(2, vo.getCust_pw());
			stmt.setString(3, vo.getCust_name());
			stmt.setString(4, vo.getCust_email());
			stmt.setString(5, vo.getCust_tel());
			stmt.setString(6, vo.getCust_address());
			stmt.setString(7, vo.getCust_gender());
			
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
}
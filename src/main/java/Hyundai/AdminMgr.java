package Hyundai;

import java.sql.*;
import java.util.Vector;
import com.myweb.admin.*;

public class AdminMgr {

    private DBConnectionMgr pool = null;

    public AdminMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }
    
    public boolean adminId(String admin_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean adminCheck = false;
        try {
            con = pool.getConnection();
            String strQuery = "select admin_id from hyundaicar.admin where admin_id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, admin_id);
            rs = pstmt.executeQuery();
            adminCheck = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return adminCheck;
    }

    public boolean AdminInsert(RegisterBean adminBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean adminInsert = false;
        try {
            con = pool.getConnection();
            String strQuery = "insert into hyundaicar.admin values(?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, adminBean.getAdmin_id());
            pstmt.setString(2, adminBean.getAdmin_pw());
            pstmt.setString(3, adminBean.getAdmin_name());
            pstmt.setString(4, adminBean.getPhone());
            int count = pstmt.executeUpdate();

            if (count == 1) {
            	adminInsert = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return adminInsert;
    }

    public RegisterBean getAdmin(String admin_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        RegisterBean adminBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from hyundaicar.admin";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, admin_id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                adminBean = new RegisterBean();
                adminBean.setAdmin_id(rs.getString("admin_id"));
                adminBean.setAdmin_pw(rs.getString("admin_pw"));
                adminBean.setAdmin_name(rs.getString("admin_name"));
                adminBean.setPhone(rs.getString("phone"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return adminBean;
    }

    public Vector getAdminList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector adminList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from hyundaicar.admin";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                RegisterBean adminBean = new RegisterBean();
                adminBean.setAdmin_id(rs.getString("admin_id"));
                adminBean.setAdmin_pw(rs.getString("admin_pw"));
                adminBean.setAdmin_name(rs.getString("admin_name"));
                adminBean.setPhone(rs.getString("phone"));
                adminList.add(adminBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return adminList;
    }
    
    public boolean AdminUpdate(RegisterBean adminBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean adUpdate = false;
        try {
            con = pool.getConnection();
            String strQuery = "update hyundaicar.admin set admin_id=?, admin_pw=?, admin_name=?, phone=?";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, adminBean.getAdmin_id());
            pstmt.setString(2, adminBean.getAdmin_pw());
            pstmt.setString(3, adminBean.getAdmin_name());
            pstmt.setString(4, adminBean.getPhone());
            int count = pstmt.executeUpdate();

            if (count == 1) {
            	adUpdate = true;
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return adUpdate;
    }
    
    public boolean adminCheck(String admin_id, String admin_pw) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean adminlogin = false;
        try {
            con = pool.getConnection();
            String strQuery = "select admin_id, admin_pw from hyundaicar.admin";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, admin_id);
            pstmt.setString(2, admin_pw);
            rs = pstmt.executeQuery();
            adminlogin = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return adminlogin;
    }
}

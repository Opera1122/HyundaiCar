package Hyundai;

import java.sql.*;
import java.util.Vector;

import com.myweb.model.ModelDTO;


public class ModelMgr {

    private DBConnectionMgr pool = null;

    public ModelMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean checkId(String cust_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select cust_id from hyundaicar.customer where cust_id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, cust_id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }

    //아반떼 견적 작성
    public boolean AvanteInsert(ModelDTO model) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        int optionPrice = 0;
        int optionPrice_2 = 0;
        int optionPrice_3 = 0;
        int optionPrice_4 = 0;
        
        try {
            con = pool.getConnection();
            String strQuery = "insert into hyundaicar.model values(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setInt(1, 1);
            pstmt.setString(2, "아반떼");
            pstmt.setString(3, model.getColor());
            pstmt.setString(4, model.getOption());
            if (model.getOption() != null) {
            	optionPrice = 900000;
            }
            pstmt.setString(5, model.getOption_2());
            if (model.getOption_2() != null) {
            	optionPrice_2 = 700000;
            }
            pstmt.setString(6, model.getOption_3());
            if (model.getOption_3() != null) {
            	optionPrice_3 = 700000;
            }
            pstmt.setString(7, model.getOption_4());
            if (model.getOption_4() != null) {
            	optionPrice_4 = 500000;
            }
            
            pstmt.setInt(8, 19010000 + optionPrice + optionPrice_2 + optionPrice_3 + optionPrice_4);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }
    
    //아반떼 Hybrid 견적 작성
    public boolean AvanteHybridInsert(ModelDTO model) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        int optionPrice = 0;
        int optionPrice_2 = 0;
        int optionPrice_3 = 0;
        int optionPrice_4 = 0;
        
        try {
            con = pool.getConnection();
            String strQuery = "insert into hyundaicar.model values(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setInt(1, 2);
            pstmt.setString(2, "아반떼 Hybrid");
            pstmt.setString(3, model.getColor());
            pstmt.setString(4, model.getOption());
            if (model.getOption() != null) {
            	optionPrice = 650000;
            }
            pstmt.setString(5, model.getOption_2());
            if (model.getOption_2() != null) {
            	optionPrice_2 = 700000;
            }
            pstmt.setString(6, model.getOption_3());
            if (model.getOption_3() != null) {
            	optionPrice_3 = 700000;
            }
            pstmt.setString(7, model.getOption_4());
            if (model.getOption_4() != null) {
            	optionPrice_4 = 300000;
            }
            
            pstmt.setInt(8, 24990000 + optionPrice + optionPrice_2 + optionPrice_3 + optionPrice_4);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }
    
    //쏘나타 견적 작성
    public boolean SonataInsert(ModelDTO model) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        int optionPrice = 0;
        int optionPrice_2 = 0;
        int optionPrice_3 = 0;
        
        try {
            con = pool.getConnection();
            String strQuery = "insert into hyundaicar.model values(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setInt(1, 3);
            pstmt.setString(2, "쏘나타");
            pstmt.setString(3, model.getColor());
            pstmt.setString(4, model.getOption());
            if (model.getOption() != null) {
            	optionPrice = 750000;
            }
            pstmt.setString(5, model.getOption_2());
            if (model.getOption_2() != null) {
            	optionPrice_2 = 250000;
            }
            pstmt.setString(6, model.getOption_3());
            if (model.getOption_3() != null) {
            	optionPrice_3 = 1200000;
            }
            pstmt.setString(7, model.getOption_4());
            
            pstmt.setInt(8, 26780000 + optionPrice + optionPrice_2 + optionPrice_3);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }
    
    //쏘나타 Hybrid 견적 작성
    public boolean SonataHybridInsert(ModelDTO model) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        int optionPrice = 0;
        int optionPrice_2 = 0;
        int optionPrice_3 = 0;
        int optionPrice_4 = 0;
        
        try {
            con = pool.getConnection();
            String strQuery = "insert into hyundaicar.model values(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setInt(1, 4);
            pstmt.setString(2, "쏘나타 Hybrid");
            pstmt.setString(3, model.getColor());
            pstmt.setString(4, model.getOption());
            if (model.getOption() != null) {
            	optionPrice = 250000;
            }
            pstmt.setString(5, model.getOption_2());
            if (model.getOption_2() != null) {
            	optionPrice_2 = 750000;
            }
            pstmt.setString(6, model.getOption_3());
            if (model.getOption_3() != null) {
            	optionPrice_3 = 1300000;
            }
            pstmt.setString(7, model.getOption_4());
            if (model.getOption_4() != null) {
            	optionPrice_4 = 1200000;
            }
            
            pstmt.setInt(8, 30680000 + optionPrice + optionPrice_2 + optionPrice_3 + optionPrice_4);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

    public RegisterBean getCustomer(String cust_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        RegisterBean regBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from hyundaicar.customer";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, cust_id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                regBean = new RegisterBean();
                regBean.setCust_id(rs.getString("cust_id"));
                regBean.setCust_pw(rs.getString("cust_pw"));
                regBean.setCust_name(rs.getString("cust_name"));
                regBean.setCust_tel(rs.getString("cust_tel"));
                regBean.setCust_email(rs.getString("cust_email"));
                regBean.setCust_address(rs.getString("cust_address"));
                regBean.setCust_gender(rs.getString("cust_gender"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return regBean;
    }

    public Vector getCustomerList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from hyundaicar.customer";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                RegisterBean regBean = new RegisterBean();
                regBean.setCust_id(rs.getString("cust_id"));
                regBean.setCust_pw(rs.getString("cust_pw"));
                regBean.setCust_name(rs.getString("cust_name"));
                regBean.setCust_tel(rs.getString("cust_tel"));
                regBean.setCust_email(rs.getString("cust_email"));
                regBean.setCust_gender(rs.getString("cust_gender"));
                vecList.add(regBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    public boolean CustomerUpdate(RegisterBean regBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "update hyundaicar.customer set cust_pw=?, cust_name=?, cust_email=?, cust_tel=?, cust_address=?, cust_gender=?, cust_id=? ";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, regBean.getCust_id());
            pstmt.setString(2, regBean.getCust_pw());
            pstmt.setString(3, regBean.getCust_name());
            pstmt.setString(4, regBean.getCust_email());
            pstmt.setString(5, regBean.getCust_tel());
            pstmt.setString(6, regBean.getCust_address());
            pstmt.setString(7, regBean.getCust_gender());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

    public boolean loginCheck(String cust_id, String cust_pw) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select cust_id, cust_pw from hyundaicar.customer";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, cust_id);
            pstmt.setString(2, cust_pw);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }

    public boolean adminCheck(String admin_id, String admin_pw) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select admin_id, admin_pw from hyundaicar.admin";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, admin_id);
            pstmt.setString(2, admin_pw);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }
}

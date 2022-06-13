package dao;
import util.JNDIDSUtils;

import java.sql.*;

import bean.user;
import servlet.*;

public class userdao {
    public static boolean IsExist(user stu) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String SQL = "SELECT * FROM userinfor WHERE id='" + stu.getId() + "'";
        try {
            con = JNDIDSUtils.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);
            if (rs.next()) {
            } else {
                JNDIDSUtils.release(rs, stmt, con);
                return false;
            }
        } catch (SQLException e) {
        }

        JNDIDSUtils.release(rs, stmt, con);
        return true;
    }
        public static void Insert(user stu) {
            Connection con=null;
            Statement stmt=null;
            String SQL="INSERT userinfor VALUE('"+stu.getId()+"','"
                    +stu.getName()+"','"
                    +stu.getSex()+"','"
                    +stu.getAge()+"','"
                    +stu.getPassword()+"','"
                    +stu.getTelephone()+"','"
                    +stu.getSid()+"')";

            try {
                con=JNDIDSUtils.getConnection();
                stmt=con.createStatement();
                stmt.executeUpdate(SQL);
            }
            catch (SQLException e) {
            }
            JNDIDSUtils.release(stmt,con);
        }
    public static boolean IsPass(user stu) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String SQL = "SELECT * FROM userinfor WHERE id='" + stu.getId() + "'";
        try {
            con = JNDIDSUtils.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);
            if (rs.next()) {//有ID
                String d1=rs.getString("password");
                String d2=stu.getPassword();
                if (d1.equals(d2)){
                    return true;
                }
                else {
                    JNDIDSUtils.release(rs, stmt, con);
                    return false;
                    }
            }
        } catch (SQLException e) {
        }

        JNDIDSUtils.release(rs, stmt, con);
        return false;
    }

    public static int IsSid(user stu) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String SQL = "SELECT * FROM userinfor WHERE id='" + stu.getId() + "'";
        try {
            con = JNDIDSUtils.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);
            if (rs.next()) {//有ID
                String d1=rs.getString("sid");
                if (d1.equals("1")){
                    return 1;
                }
                else if (d1.equals("2")) {
                    return 2;
                }
                else if(d1.equals("3")){
                    return 3;
                }
                else {
                    JNDIDSUtils.release(rs, stmt, con);
                    return 0;
                }
            }
        } catch (SQLException e) {
        }

        JNDIDSUtils.release(rs, stmt, con);
        return 0;
    }
    
    public static boolean xiu(user stu) {//修改密码
        Connection con = null;
        Statement stmt = null;
        String q1 = wangji.getpwx();
        String SQL = "update userinfor set password = "+q1+" where id=" + stu.getId() + "";
        try {
            con=JNDIDSUtils.getConnection();
            stmt=con.createStatement();
            stmt.executeUpdate(SQL);
        }
        catch (SQLException e) {
        }
        JNDIDSUtils.release(stmt,con);
        return true;
    }
    
    public static boolean shan(user stu) {//删除
        Connection con = null;
        Statement stmt = null;
        String q1 = wangji.getpwx();
        String SQL = "DELETE FROM userinfor where id=" + stu.getId() + "";
        try {
            con=JNDIDSUtils.getConnection();
            stmt=con.createStatement();
            stmt.executeUpdate(SQL);
        }
        catch (SQLException e) {
        }
        JNDIDSUtils.release(stmt,con);
        return true;
    }

}
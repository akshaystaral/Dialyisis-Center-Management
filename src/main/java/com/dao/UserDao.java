package com.dao;

import com.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    private final Connection conn;
    private User u;

    public UserDao(Connection conn) {
        this.conn = conn;
    }

    public boolean userRegistration(User u) {
        this.u = u;
        boolean f = false;
        try {
            String sql = "INSERT INTO rnuser_details (rnuser_firstname,rnuser_lastname,rnuser_email,rnuser_password) VALUES" +
                    "(?,?,?,?)";
            PreparedStatement myStmt = conn.prepareStatement(sql);
            myStmt.setString(1,u.getFullname());
            myStmt.setString(2, u.getLastname());
            myStmt.setString(3,u.getEmail());
            myStmt.setString(4, u.getPassword());

            int i = myStmt.executeUpdate();
            if (i==1){
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User login(String em, String psw) {
        User u = null;

        try {
            String sql = "select * from rnuser_details where rnuser_email=? and rnuser_password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, em);
            ps.setString(2, psw);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                u = new User();
                u.setId(rs.getInt(1));
                u.setFullname(rs.getString(2));
                u.setLastname(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setPassword(rs.getString(5));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return u;
    }
    public boolean checkOldPassword(int userid, String oldPassword) {
        boolean f = false;

        try {
            String sql = "select * from rnuser_details where idrnuser_details=? and rnuser_password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userid);
            ps.setString(2, oldPassword);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public boolean changePassword(int userid, String newPassword) {
        boolean f = false;

        try {
            String sql = "update rnuser_details set rnuser_password=? where idrnuser_details=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setInt(2, userid);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

}

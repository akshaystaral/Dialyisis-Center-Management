package com.dao;

import com.entity.Nephrologist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NephrologistDao {

    private Connection conn;

    public NephrologistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean addNephrologist(String nep_name) {
        boolean f = false;
        try {
            String sql = "insert into nephrologist(nep_name) values(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nep_name);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<Nephrologist> getAllSpecialist() {
        List<Nephrologist> list = new ArrayList<Nephrologist>();
        Nephrologist s = null;

        try {
            String sql = "select * from nephrologist";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                s = new Nephrologist();
                s.setId(rs.getInt(1));
                s.setNephrologisttName(rs.getString(2));
                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}

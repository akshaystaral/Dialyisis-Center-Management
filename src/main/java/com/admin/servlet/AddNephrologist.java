package com.admin.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.NephrologistDao;
import com.db.DbConnect;
import com.entity.User;

@WebServlet("/addNephrologist")
public class    AddNephrologist extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nepName = req.getParameter("nepName");

        NephrologistDao dao = new NephrologistDao(DbConnect.getConn());
        boolean f = dao.addNephrologist(nepName);

        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succMsg", "Nephrologist Added");
            resp.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/index.jsp");
        }

    }
}

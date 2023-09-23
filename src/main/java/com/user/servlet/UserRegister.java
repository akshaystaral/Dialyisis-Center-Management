package com.user.servlet;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String firstname = req.getParameter("firstname");
            String lastname = req.getParameter("lastname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User u = new User(firstname, lastname, email, password);
            UserDao userDao = new UserDao(DbConnect.getConn());

            HttpSession session = req.getSession();

            boolean f = userDao.userRegistration(u);

            if(f){
                session.setAttribute("sucMsg","User Registered Successfully.");
                resp.sendRedirect("signup.jsp");
                System.out.println("User Registered Successfully.");
            }else{
                session.setAttribute("errorMsg","Something Went Wrong.");
                resp.sendRedirect("signup.jsp");
                System.out.println("Something Went Wrong.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

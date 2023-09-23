package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DbConnect;
import com.entity.Appointment;

@WebServlet("/appAppointment")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int userId = Integer.parseInt(req.getParameter("userid"));
            String fullName = req.getParameter("fullname");
            String gender = req.getParameter("gender");
            String age = req.getParameter("age");
            String appoinDate = req.getParameter("appoint_date");
            String email = req.getParameter("email");
            String phNo = req.getParameter("phNo");
            String diseases = req.getParameter("diseases");
            String renalStatus = req.getParameter("renalStatus");
            String hdAccess = req.getParameter("hdAccess");
            String modality = req.getParameter("modality");
            String dbStatus = req.getParameter("dbStatus");
            int doctorId = Integer.parseInt(req.getParameter("doctor_id"));
            String address = req.getParameter("address");

            Appointment ap = new Appointment(userId, fullName, gender, age, appoinDate, email, phNo, diseases, doctorId, renalStatus, hdAccess, modality, dbStatus, address, "Pending");

            AppointmentDAO dao = new AppointmentDAO(DbConnect.getConn());
            HttpSession session = req.getSession();

            if (dao.addAppointment(ap)) {
                session.setAttribute("succMsg", "Appointment added sucessfully");
                resp.sendRedirect("user_appointment.jsp");
            } else {
                session.setAttribute("errorMsg", "Something wrong on server");
                resp.sendRedirect("user_appointment.jsp");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    }


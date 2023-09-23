<%@page import="com.db.DbConnect"%><%@page import="com.dao.DoctorDao"%><%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@page isELIgnored="false"%><%@page import="com.entity.Doctor"%><%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Registered Nurse Dashboard</title><%@include file="component/allcss.jsp"%> <style type="text/css">
      .paint-card {
        box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
      }

      .backImg {
        background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
          url("img/image6.jpg");
        height: 5vh;
        width: 100%;
        background-size: cover;
        background-repeat: no-repeat;
      }
    </style>
  </head>
  <body><%@include file="component/navbar.jsp"%> <div class="container-fulid backImg p-5">
      <p class="text-center fs-2 text-white"></p>
    </div>
    <div class="container p-2">
      <div class="row">
        <div class="col-md-6 p-3">
          <img alt="" src="img/image5.jpg">
        </div>
        <div class="col-md-6 p-3">
          <div class="card paint-card">
            <div class="card-body">
              <p class="text-center fs-3">User Appointment</p>
              <c:if test="${not empty errorMsg}">
                <p class="fs-4 text-center text-danger">${errorMsg}</p>
                <c:remove var="errorMsg" scope="session" />
              </c:if>
              <c:if test="${not empty succMsg}">
                <p class=" fs-4 text-center text-success">${succMsg}</p>
                <c:remove var="succMsg" scope="session" />
              </c:if>
              <!-- <form class="row g-3"> -->
<form class="row g-3" action="appAppointment" method="post">
                <input type="hidden" name="userid" value="${userObj.id }">
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Full Name</label>
                  <input required type="text" class="form-control" name="fullname">
                </div>
                <div class="col-md-6">
                  <label>Gender</label>
                  <select class="form-control" name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Age</label>
                  <input required type="number" class="form-control" name="age">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Appointment Date</label>
                  <input type="date" class="form-control" required name="appoint_date">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Email</label>
                  <input required type="email" class="form-control" name="email">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Phone No</label>
                  <input maxlength="10" required type="number" class="form-control" name="phNo">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Diseases</label>
                  <input required type="text" class="form-control" name="diseases">
                </div>
                <div class="col-md-6">
                  <label>Renal Status</label>
                  <select class="form-control" required name="renalStatus">
                    <option value="ESRD">ESRD</option>
                    <option value="AKI">AKI</option>
                    <option value="Pre-PD">Pre-PD</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label>Hemodialysis Access</label>
                  <select class="form-control" required name="hdAccess">
                    <option value="Fistula">Fistula</option>
                    <option value="Graft">Graft</option>
                    <option value="Catheter">Catheter</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label>Modality</label>
                  <select class="form-control" required name="modality">
                    <option value="ICHD">ICHD</option>
                    <option value="ICHD">HHD</option>
                    <option value="ICHD">PD</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label>Diabetic Status</label>
                  <select class="form-control" required name="dbStatus" required class="form-control">
                    <option value="Diabetes Mellitus 1">Diabetes Mellitus 1</option>
                    <option value="Diabetes Mellitus 2">Diabetes Mellitus 2</option>
                    <option value="Diabetes Mellitus - Type Unknown">Diabetes Mellitus - Type Unknown</option>
                    <option value="Non-Diabetic">Non-Diabetic</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="inputPassword4" class="form-label">Doctor</label>
                  <select required class="form-control" name="doctor_id">
                    <option value="">Select</option><%
                                                                									DoctorDao dao = new DoctorDao(DbConnect.getConn());
                                                                									List



																			<Doctor> list = dao.getAllDoctor();
                                                                									for (Doctor d : list) {
                                                                									%> <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>) </option><%
                                                                									}
                                                                									%>
                  </select>
                </div>
                <div class="col-md-12">
                  <label>Full Address</label>
                  <textarea required name="address" class="form-control" rows="3" cols=""></textarea>
                </div>
                <c:if test="${empty userObj }">
                  <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                </c:if>
                <c:if test="${not empty userObj }">
                  <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                </c:if>
              </form>
            </div>
          </div>
        </div>
      </div>
  </body>
</html>
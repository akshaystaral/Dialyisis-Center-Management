<%@page import="com.entity.Doctor"%><%@page import="com.db.DbConnect"%><%@page import="com.dao.DoctorDao"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Doctor Login</title><%@include file="component/allcss.jsp" %>
  </head>
  <body><%@include file= "component/navbar.jsp" %> <div>
      <div class="container p-5">
        <div class="row">
          <div class="col-md-4 offset-md-4">
            <div class="card paint-card">
              <div class="card-body">
                <p class="fs-4 text-center"> Doctor login </p>
                <c:if test="${not empty errorMsg}">
                  <p class="fs-3 text-center text-danger">${errorMsg}</p>
                  <c:remove var="errorMsg" scope="session" />
                </c:if>
                <c:if test="${not empty succMsg}">
                  <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                  <c:remove var="succMsg" scope="session" />
                </c:if>
                <form action="doctorLogin" method="post">
                  <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input required name="email" type="email" class="form-control">
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input required name="password" type="password" class="form-control">
                  </div>
                  <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
                </form>
                <br>Don't have an account? <a href="signup.jsp" class="text-decoration-none">Create One</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
  </body>
</html>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@page isELIgnored="false"%> <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
      <a class="navbar-brand" href="index.jsp">
        <i class="fa-solid fa-staff-snake"></i> Jivada Dialysis Center </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <style type="text/css">
        .nav-link active{
          color: #fff;
          font-weight: normal;
          font-weight: 300;
          -webkit-transition: all 0.5s ease 0s;
          transition: all 0.5s ease 0s;
        }

        .nav-link:hover {
          -webkit-transition: all 0.5s ease 0s;
          transition: all 0.5s ease 0s;
          text-transform: uppercase;
          text-decoration: none;
        }
      </style>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <c:if test="${empty userObj }">
            <li class="nav-item active">
              <a class="nav-link active" href="admin.jsp">Admin <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link active" href="doctor_login.jsp">Doctor <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link active" href="rnuserlogin.jsp">Registered Nurse <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link active" href="billing.jsp">Booking <span class="sr-only">(current)</span>
              </a>
            </li>
          </c:if>
          <c:if test="${not empty userObj }">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" href="user_appointment.jsp">Appointment</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="view_appointment.jsp">View Appointment</a>
            </li>
            </ul>

            <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fas fa-user-circle"></i> ${userObj.fullname } </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li>
                  <a class="dropdown-item" href="change_password.jsp"><i class="fa fa-key" aria-hidden="true"></i> Change Password
</a>
                </li>
                <li>
                  <a class="dropdown-item" href="userLogout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout
</a>
                </li>
          </c:if>
        </ul>
      </div>
    </nav>
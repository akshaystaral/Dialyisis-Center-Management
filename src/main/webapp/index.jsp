<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Jivada</title>
    <%@ include file = "component/allcss.jsp" %>
  </head>
  <body>
  <%@ include file = "component/navbar.jsp" %>


  <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel"></div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="img/image1.jpg" alt="First slide" height="480px">
      </div>
    </div>
    </div>
    </div>
    <div class="pt-5 pb-5">
        <div class="container">
        <div class="row">
            <div class="section-head col-sm-12">
                <h4><span>Why Choose</span> Us?</h4>
                <p>Established by Dr Prathap C Reddy in 1983, Apollo Healthcare has a robust presence across the healthcare ecosystem. From routine wellness & preventive health care to innovative life-saving treatments and diagnostic services, Apollo Hospitals has touched more than 200 million lives from over 120 countries.</p>
            </div>
            <div class="col lg-4 col sm-6">
                <div class="item"> <span class="icon feature_box_col_one"><i class="fa fa-globe"></i></span>
                    <h6>Modern Design</h6>
                    <p>70+ Modern Dialysis Diagnostic centres across India</p>
                </div>
            </div>
            <div class="col lg-4 col sm-6">
                            <div class="item"> <span class="icon feature_box_col_two"><i class="fa fa-anchor"></i></span>
                                <h6>Creative Design</h6>
                                <p>70+ Modern Dialysis Diagnostic centres across India</p>
                            </div>
                        </div>

    <div class="col lg-4 col sm-6">
                            <div class="item"> <span class="icon feature_box_col_three"><i class="fa fa-database"></i></span>
                                <h6>Buiseness Growth</h6>
                                <p>11,000+ Doctors associated with the Dialysis Center</p>
                            </div>
                        </div>
                </div>
        </div>
      </div>
</div>


  </body>
</html>
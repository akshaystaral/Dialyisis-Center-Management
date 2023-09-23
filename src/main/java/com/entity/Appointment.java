package com.entity;

public class Appointment {

    private int id;
    private int userId;
    private String fullName;
    private String gender;
    private String age;
    private String appoint_date;
    private String email;
    private String phNo;
    private String diseases;
    private int doctorId;
    private String renalStatus;
    private String hdAccess;
    private String modality;
    private String dbStatus;
    private String address;
    private String status;

    public Appointment() {
        super();
    }

    public Appointment(int userId, String fullName, String gender, String age, String appoint_date, String email, String phNo, String diseases, int doctorId, String renalStatus, String hdAccess, String modality, String dbStatus, String address, String status) {
        this.userId = userId;
        this.fullName = fullName;
        this.gender = gender;
        this.age = age;
        this.appoint_date = appoint_date;
        this.email = email;
        this.phNo = phNo;
        this.diseases = diseases;
        this.doctorId = doctorId;
        this.renalStatus = renalStatus;
        this.hdAccess = hdAccess;
        this.modality = modality;
        this.dbStatus = dbStatus;
        this.address = address;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAppoinDate() {
        return appoint_date;
    }

    public void setAppoinDate(String appoint_date) {
        this.appoint_date = appoint_date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhNo() {
        return phNo;
    }

    public void setPhNo(String phNo) {
        this.phNo = phNo;
    }

    public String getDiseases() {
        return diseases;
    }

    public void setDiseases(String diseases) {
        this.diseases = diseases;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getRenalStatus() {
        return renalStatus;
    }

    public void setRenalStatus(String renalStatus) {
        this.renalStatus = renalStatus;
    }

    public String getHdAccess() {
        return hdAccess;
    }

    public void setHdAccess(String hdAccess) {
        this.hdAccess = hdAccess;
    }

    public String getModality() {
        return modality;
    }

    public void setModality(String modality) {
        this.modality = modality;
    }

    public String getDbStatus() {
        return dbStatus;
    }

    public void setDbStatus(String dbStatus) {
        this.dbStatus = dbStatus;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}


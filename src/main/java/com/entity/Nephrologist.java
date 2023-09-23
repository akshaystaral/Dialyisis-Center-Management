package com.entity;

public class Nephrologist {
    private int id;
    private String nephrologisttName;

    public Nephrologist() {
        super();
    }

    public Nephrologist(int id, String nephrologisttName) {
        super();
        this.id = id;
        this.nephrologisttName = nephrologisttName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNephrologisttName() {
        return nephrologisttName;
    }

    public void setNephrologisttName(String nephrologisttName) {
        this.nephrologisttName = nephrologisttName;
    }
}

package com.pon.assignment8;

public class Company {
    private int id;
    private String name;
    private String section;

    public Company(int id, String name, String section) {
        this.id = id;
        this.name = name;
        this.section = section;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSection() {
        return section;
    }
}

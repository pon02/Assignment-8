package com.pon.assignment8;

public class Staff {
    private int id;
    private String name;
    private int age;
    private String company;
    private boolean smoking;

    public Staff(int id, String name, int age, String company, boolean smoking) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.company = company;
        this.smoking = smoking;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getCompany() {
        return company;
    }

    public boolean isSmoking() {
        return smoking;
    }
}


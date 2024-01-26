package com.pon.assignment8;

public class Staff {
    private int id;
    private String name;
    private int age;
    private String company_id;
    private boolean smoking;

    public Staff(int id, String name, int age, String company_id, boolean smoking) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.company_id = company_id;
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

    public String getCompany_id() {
        return company_id;
    }

    public boolean isSmoking() {
        return smoking;
    }
}


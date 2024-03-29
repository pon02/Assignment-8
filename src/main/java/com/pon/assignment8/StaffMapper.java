package com.pon.assignment8;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface StaffMapper {
        @Select("SELECT * FROM staff")
        List<Staff> findAllStaff();

        @Select("SELECT * FROM staff WHERE smoking = #{smoking}")
        List<Staff> isSmoking(boolean smoking);

        @Select("SELECT * FROM companies")
        List <Company> findAllCompany();
    }

package com.pon.assignment8;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@RestController
public class StaffController {
        private final StaffMapper staffMapper;

        public StaffController(StaffMapper staffMapper) {
            this.staffMapper = staffMapper;
        }
        @GetMapping("/staff")
        public List<Staff> findAll() {
            return staffMapper.findAll();
        }
        @GetMapping("/staff/room_type")
        public List<Staff> isSmoking(@RequestParam String smoking) {
            return staffMapper.isSmoking(Boolean.parseBoolean(smoking));
        }
        @GetMapping("/companies")
        public List<Company> findAllCompany() {
            return staffMapper.findAll2();
    }
}

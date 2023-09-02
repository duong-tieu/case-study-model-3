package com.example.model.service;

import com.example.model.dao.StaffDao;
import com.example.model.dto.StaffDto;
import com.example.model.entity.Staff;

import java.util.ArrayList;
import java.util.List;

public class StaffService {
    private StaffDao staffDao = null;

    public StaffService() {
        staffDao = new StaffDao();
    }

    public List<StaffDto> seacrchByid(String id) {
        List<Staff> staffs = staffDao.searchById(id);
        List<StaffDto> staffDtos = new ArrayList<>();
        for (Staff staff1 : staffs) {
            staffDtos.add(new StaffDto(staff1.getId(), staff1.getName(), staff1.getAddress(), staff1.getPosition()));
        }
        return staffDtos;
    }

    public List<StaffDto> findAll() {
        List<Staff> staffs = staffDao.getAll();
        List<StaffDto> staffDtos = new ArrayList<>();

        for (Staff staff : staffs) {
            staffDtos.add(new StaffDto(
                    staff.getId(), staff.getName(),
                    staff.getAddress(), staff.getPosition()));
        }

        return staffDtos;
    }

    public StaffDto find(String id) {
        Staff staff = staffDao.get(id);
        return new StaffDto(staff.getId(), staff.getName(),
                staff.getEmail(), staff.getAddress(), staff.getPhone(), staff.getStartDate(), staff.getSalary(), staff.getPosition());
    }

    public void add(StaffDto staffDto) {
        Staff staff = new Staff(staffDto.getId(),
                staffDto.getName(), staffDto.getAddress(),
                staffDto.getEmail(), staffDto.getPhone(),
                staffDto.getStartDate(), staffDto.getSalary(), staffDto.getPosition(), staffDto.isStatus());
        staffDao.insert(staff);


    }

    public void edit(StaffDto staffDto) {
        Staff staff = new Staff(staffDto.getId(),
                staffDto.getName(), staffDto.getAddress(), staffDto.getEmail(), staffDto.getPhone(), staffDto.getStartDate(), staffDto.getSalary(), staffDto.getPosition());
        staffDao.update(staff);
    }

    public void remove(String id) {
        staffDao.delete(id);
    }

    public List<StaffDto> sortById() {
        List<Staff> staffs = staffDao.sortByIdDesc();
        List<StaffDto> staffDtos = new ArrayList<>();
        for (Staff staff1 : staffs) {
            staffDtos.add(new StaffDto(staff1.getId(), staff1.getName(), staff1.getAddress(), staff1.getPosition()));
        }
        return staffDtos;
    }
}


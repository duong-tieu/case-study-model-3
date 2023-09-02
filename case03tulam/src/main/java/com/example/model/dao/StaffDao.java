package com.example.model.dao;

import com.example.model.entity.Staff;
import com.example.connection.jdbcConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class StaffDao {
    private List<Staff> staffs = null;

    public List<Staff> getAll() {
        staffs = new LinkedList<>();
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "SELECT * FROM staff;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(resultSet.getString("id"));
                staff.setName(resultSet.getString("name"));
                staff.setAddress(resultSet.getString("address"));
                staff.setEmail(resultSet.getString("email"));
                staff.setPhone(resultSet.getString("phone"));
                staff.setStartDate(resultSet.getString("start_date"));
                staff.setSalary(resultSet.getDouble("salary"));
                staff.setPosition(resultSet.getString("position"));
                staff.setStatus(resultSet.getBoolean("status"));
                ;
                staffs.add(staff);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return staffs;
    }

    public Staff get(String id) {
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "SELECT * FROM staff WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(resultSet.getString("id"));
                staff.setName(resultSet.getString("name"));
                staff.setAddress(resultSet.getString("address"));
                staff.setEmail(resultSet.getString("email"));
                staff.setPhone(resultSet.getString("phone"));
                staff.setStartDate(resultSet.getString("start_date"));
                staff.setSalary(resultSet.getDouble("salary"));
                staff.setPosition(resultSet.getString("position"));
                return staff;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new Staff();
    }

    public void insert(Staff staff) {
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "INSERT INTO staff(id,name, address,email,phone,start_date,salary,position,status) VALUES(?,?,?,?,?,?,?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, staff.getId());
            preparedStatement.setString(2, staff.getName());
            preparedStatement.setString(3, staff.getAddress());
            preparedStatement.setString(4, staff.getEmail());
            preparedStatement.setString(5, staff.getPhone());
            preparedStatement.setString(6, staff.getStartDate());
            preparedStatement.setDouble(7, staff.getSalary());
            preparedStatement.setString(8, staff.getPosition());
            preparedStatement.setBoolean(9, staff.getStatus());

            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("Added customer successfully.");
            } else {
                System.out.println("Failed to insert customer.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Staff> searchById(String name) {
        staffs = new ArrayList<>();
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "SELECT * FROM staff WHERE name like ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1,"%"+ name+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(resultSet.getString("id"));
                staff.setName(resultSet.getString("name"));
                staff.setEmail(resultSet.getString("email"));
                staff.setAddress(resultSet.getString("address"));
                staff.setPhone(resultSet.getString("phone"));
                staff.setSalary(resultSet.getDouble("salary"));
                staff.setPosition(resultSet.getString("position"));
                staff.setStatus(resultSet.getBoolean("status"));
                staffs.add(staff);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return staffs;
    }


    public void update(Staff staff) {
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "UPDATE staff SET name = ?, email = ?, address = ?,phone=?,start_date=?,salary=?,position=? WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, staff.getName());
            preparedStatement.setString(2, staff.getEmail());
            preparedStatement.setString(3, staff.getAddress());
            preparedStatement.setString(4, staff.getPhone());
            preparedStatement.setString(5, staff.getStartDate());
            preparedStatement.setDouble(6, staff.getSalary());
            preparedStatement.setString(7, staff.getPosition());
            preparedStatement.setString(8, staff.getId());


            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("Edited customer successfully.");
            } else {
                System.out.println("Failed to edit customer.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(String id) {
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "DELETE FROM staff WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, id);

            if (preparedStatement.executeUpdate() > 0) {
                System.out.println("Removed customer successfully.");
            } else {
                System.out.println("Failed to remove customer.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public List<Staff> sortByIdDesc() {
        staffs = new ArrayList<>();
        try {
            Connection connection = jdbcConnection.getConnection();
            String query = "SELECT * FROM staff order by id desc ;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setString(1,"%"+ id+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(resultSet.getString("id"));
                staff.setName(resultSet.getString("name"));
                staff.setEmail(resultSet.getString("email"));
                staff.setAddress(resultSet.getString("address"));
                staff.setPhone(resultSet.getString("phone"));
                staff.setSalary(resultSet.getDouble("salary"));
                staff.setPosition(resultSet.getString("position"));
                staff.setStatus(resultSet.getBoolean("status"));
                staffs.add(staff);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return staffs;
    }

}

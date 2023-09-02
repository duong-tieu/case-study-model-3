package com.example.control;

import com.example.HelloServlet;
import com.example.model.dto.StaffDto;
import com.example.model.entity.Staff;
import com.example.model.service.StaffService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "staffServlet", urlPatterns = {"/", "/staffs", "/staff/detail",
        "/staff/add", "/staff/edit",
        "/staff/remove", "/staff/searchById", "/staff/sortById"})
public class StaffController extends HttpServlet {
    private StaffService staffService = null;

    @Override
    public void init() throws ServletException {

        staffService = new StaffService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/":
            case "/staffs":
                req.setAttribute("staffs", staffService.findAll());
                req.getRequestDispatcher("/WEB-INF/view/manager.jsp").forward(req, resp);
                break;
            case "/staff/detail":
                String detailId = (req.getParameter("id"));
                req.setAttribute("staffs", staffService.find(detailId));
                req.getRequestDispatcher("/WEB-INF/view/detail.jsp").forward(req, resp);
                break;
            case "/staff/add":
                req.getRequestDispatcher("/WEB-INF/view/add.jsp").forward(req, resp);
                break;
            case "/staff/edit":
                String editId = (req.getParameter("id"));
                req.setAttribute("staffs", staffService.find(editId));
                req.getRequestDispatcher("/WEB-INF/view/edit.jsp").forward(req, resp);
                break;
            case "/staff/remove":
                String removeId = (req.getParameter("id"));
                staffService.remove(removeId);
                req.setAttribute("staffs", staffService.findAll());
                req.setAttribute("message", "Successful delete");
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/view/manager.jsp");
                try {
                    requestDispatcher.forward(req, resp);
                } catch (IOException | ServletException e) {
                    e.printStackTrace();
                }
                break;
            case "/staff/searchById":
                String searchId = req.getParameter("id");
                staffService.seacrchByid(searchId);
                req.setAttribute("staffs", staffService.seacrchByid(searchId));
                req.getRequestDispatcher("/WEB-INF/view/manager.jsp").forward(req, resp);
                break;
            case "/staff/sortById":
                staffService.sortById();
                req.setAttribute("staffs", staffService.sortById());
                req.getRequestDispatcher("/WEB-INF/view/manager.jsp").forward(req, resp);

        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String action = req.getServletPath();
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String startDate = req.getParameter("startDate");
        double salary = Double.parseDouble(req.getParameter("salary"));
        String position = req.getParameter("position");
        boolean status = Boolean.parseBoolean(req.getParameter("status"));
        StaffDto staffDto = new StaffDto(id, name, email, address, startDate, phone, salary, position, status);

        switch (action) {
            case "/staff/add":
                id = req.getParameter("id");
                name = req.getParameter("name");
                email = req.getParameter("email");
                address = req.getParameter("address");
                phone = req.getParameter("phone");
                startDate = req.getParameter("startDate");
                salary = Double.parseDouble(req.getParameter("salary"));
                position = req.getParameter("position");
                StaffDto staffDto1 = new StaffDto(id, name, email, address, phone, startDate, salary, position);
                staffService.add(staffDto1);
                req.setAttribute("message", "Successful added");
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/view/add.jsp");
                try {
                    requestDispatcher.forward(req, resp);
                } catch (IOException | ServletException e) {
                    e.printStackTrace();
                }

//                staffService.add(staffDto);
//                resp.sendRedirect(req.getContextPath() + "/staffs");
                break;
            case "/staff/edit":
                id = req.getParameter("id");
                name = req.getParameter("name");
                email = req.getParameter("email");
                address = req.getParameter("address");
                phone = req.getParameter("phone");
                startDate = req.getParameter("startDate");
                salary = Double.parseDouble(req.getParameter("salary"));
                position = req.getParameter("position");
                StaffDto staffDto2 = new StaffDto(id, name, email, address, phone, startDate, salary, position);
                staffService.edit(staffDto2);

                req.setAttribute("message", "Successful update");
                RequestDispatcher requestDispatcher1 = req.getRequestDispatcher("/WEB-INF/view/edit.jsp");
                try {
                    requestDispatcher1.forward(req, resp);
                } catch (IOException | ServletException e) {
                    e.printStackTrace();
                }


//                id = (req.getParameter("id"));
//                StaffDto editingStaff = staffService.find(id);
//                editingStaff.setName(name);
//                editingStaff.setEmail(email);
//                editingStaff.setAddress(address);
//                editingStaff.setPhone(phone);
//                editingStaff.setStartDate(startDate);
//                editingStaff.setSalary(salary);
//                editingStaff.setPosition(position);
//                staffService.edit(editingStaff);
//                resp.sendRedirect(req.getContextPath() + "/staffs");
                break;
        }
    }
}

package com.example.test1.Controller;
import com.example.test1.model.Employee;
import com.example.test1.model.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "employeeForm";
    }

    @PostMapping("/save")
    public String saveEmployee(@ModelAttribute Employee employee, @RequestParam("photo") MultipartFile photo) throws IOException {
        // Save the uploaded photo to a file or perform any necessary operations
        // You can access the uploaded photo using the "photo" MultipartFile parameter

        // Save employee details to the database
        employeeRepository.save(employee);
        return "redirect:/";
    }
}

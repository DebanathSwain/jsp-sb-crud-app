package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.entity.Student;
import com.student.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	StudentService studentService;
  

    @GetMapping("/read-student")
    public String showReadStudentPage(Model model) {
       List<Student> studentList=studentService.findAllStudents();
    	model.addAttribute("students",studentList );
        return "readstudent";
    }

    @RequestMapping("/create-student")
    public String showCreateStudentPage(Model model) {
        model.addAttribute("command", new Student());
        return "createstudent";
    }

    @PostMapping(value = "/create-student")
    public String createStudent(@ModelAttribute("student") Student student) {
    	studentService.saveStudent(student);
        return "redirect:/read-student";
    }

    @RequestMapping(value = "/update-student/{id}")
    public String showUpdatedStudent(@PathVariable int id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("command", studentService.findStudentById(id).orElse(null));
        return "updatestudent";
    }

    @PostMapping(value = "/update-student/{id}")
    public String updateStudent(@PathVariable int id, @ModelAttribute("student") Student student) {
    	studentService.updateStudent(id, student);
        return "redirect:/read-student";
    }

    @RequestMapping("/delete-student/{id}")
    public String deleteStudent(@PathVariable int id) {
    	studentService.deleteStudentById(id);
        return "redirect:/read-student";
    }
}

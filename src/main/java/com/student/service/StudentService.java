package com.student.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.entity.Student;
import com.student.repository.StudentRepository;
@Service
public class StudentService {
	 @Autowired
	    private StudentRepository studentRepository;
	//Find All Students 
	    public List<Student> findAllStudents() {
	        return studentRepository.findAll();
	    }
	  //Find Student By id
	    public Optional<Student> findStudentById(int id) {
	        return studentRepository.findById(id);
	    }
	  //Save Student 
	    public Student saveStudent(Student contact) {
	        return studentRepository.save(contact);
	    }
//Update Student By id
	    public Student updateStudent(int id, Student student) {
	    	Student updatedStudent = studentRepository.findById(id).orElse(null);
	    	updatedStudent.setName(student.getName());
	    	updatedStudent.setEmail(student.getEmail());
	        updatedStudent.setAge(student.getAge());
	        return studentRepository.save(updatedStudent);
	    }
	  //Delete Student By id
	    public void deleteStudentById(int id) {
	    	studentRepository.deleteById(id);
	    }


}

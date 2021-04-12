package model.service;

import model.bean.Student;

import java.util.List;

public interface StudentService {
    List<Student> findAll();

    Student findById(Integer id);

    void save(Student student);
}

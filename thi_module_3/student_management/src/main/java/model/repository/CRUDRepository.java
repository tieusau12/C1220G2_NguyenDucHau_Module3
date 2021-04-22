package model.repository;

import model.bean.Student;

import java.util.List;
import java.util.Map;

public interface CRUDRepository {
    List<Student> findAll();
    Student findById(String id);

    boolean insertInto(Student student);
    boolean delete(String id);
    List<Student> searchByMultipleKeyword(String nameKeyword, String idKeyword, String emailKeyword);
    boolean edit(Student student);
    List<Student> searchByName(String name);
    List<Student> sort();
    Map<String, String> insert(Student student);
}

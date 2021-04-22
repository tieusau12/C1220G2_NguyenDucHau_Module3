package model.repository.impl;

import model.bean.Student;
import model.repository.BaseRepository;
import model.repository.CRUDRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class StudentRepositoryImpl implements CRUDRepository {
    private BaseRepository baseRepo = new BaseRepository();

    @Override
    public List<Student> findAll() {
        List<Student> studentList = new ArrayList<>();
        try {
            Statement statement = this.baseRepo.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM student_manager.student");

            Student student = null;
            while (resultSet.next()) {
                student = new Student();
                student.setId(resultSet.getString(1));
                student.setName(resultSet.getString(2));
                student.setAddress(resultSet.getString(3));
                student.setIdCard(resultSet.getString(4));
                student.setDateOfBirth(resultSet.getString(5));
                student.setClassId(resultSet.getString(6));
                student.setPhoneNumber(resultSet.getString(7));
                studentList.add(student);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return studentList;
    }

    @Override
    public Student findById(String id) {
        Student student = new Student();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = this.baseRepo.getConnection().prepareStatement("select * from student\n" +
                    "where id = ?");
            preparedStatement.setString(1, id + "");
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                student.setId(resultSet.getString(1));
                student.setName(resultSet.getString(2));
                student.setAddress(resultSet.getString(3));
                student.setIdCard(resultSet.getString(4));
                student.setDateOfBirth(resultSet.getString(5));
                student.setClassId(resultSet.getString(6));
                student.setPhoneNumber(resultSet.getString(7));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return student;
    }

    @Override
    public boolean insertInto(Student student) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        boolean rowDel = false;
        try {
            PreparedStatement preparedStatement = this.baseRepo.getConnection().prepareStatement("delete from student \n" +
                    "where id = ?");
            preparedStatement.setString(1, id + "");
            rowDel = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDel;
    }

    @Override
    public List<Student> searchByMultipleKeyword(String nameKeyword, String idKeyword, String emailKeyword) {
        return null;
    }

    @Override
    public boolean edit(Student student) {
        return false;
    }

    @Override
    public List<Student> searchByName(String name) {
        return null;
    }

    @Override
    public List<Student> sort() {
        return null;
    }

    @Override
    public Map<String, String> insert(Student student) {
        return null;
    }
}

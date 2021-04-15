package model.repository;

import model.bean.User;

import java.util.List;

public interface UserRepository {
    List<User> findAll();
//    void insertUser(User user);

    User findById(Integer id);

    boolean save(User user);

    boolean updateUsers(User user);

    boolean remove(int id);

    List<User> searchByName(String name);

    List<User> sort();
}

package model.service.impl;

import model.bean.User;
import model.repository.UserRepository;
import model.repository.impl.UserRepositoryImpl;
import model.service.UsersService;

import java.util.List;

public class UsersServiceImpl implements UsersService {
    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public List<User> findAll() {
        return this.userRepository.findAll();
    }

    @Override
    public void insertUser(User user) {

    }

    @Override
    public User findById(Integer id) {
        return this.userRepository.findById(id);
    }

    @Override
    public boolean save(User user) {
        return userRepository.save(user);
    }

    @Override
    public boolean updateUsers(User user) {
        return userRepository.updateUsers(user);
    }

    @Override
    public boolean remove(int id) {
        return userRepository.remove(id);
    }

    @Override
    public List<User> searchByName(String name) {
        return userRepository.searchByName(name);
    }

    @Override
    public List<User> sort() {
        return userRepository.sort();
    }


}

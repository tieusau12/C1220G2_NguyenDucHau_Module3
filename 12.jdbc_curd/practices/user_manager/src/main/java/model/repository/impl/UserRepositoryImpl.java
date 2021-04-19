package model.repository.impl;

import model.bean.User;
import model.repository.BaseRepository;
import model.repository.UserRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {
    private BaseRepository baseRepository = new BaseRepository();
    private static final String INSERT_USERS_SQL = " insert into users(`name`,email,country)\n" +
            "values (?,?,?)";
    private static final String SELECT_USERS_BY_ID = "select id,`name`,email,country\n" +
            "from users\n" +
            "where id=?";
    private static final String SELECT_ALL_USERS = "select*\n" +
            "from users";
    private static final String DELETE_USERS_SQL = "delete from users\n" +
            "where id=?";
    private static final String UPDATE_USERS_SQL = "update users\n" +
            "set `name` = ?,email =?,country=?\n";


    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        try {
            Statement statement = this.baseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL_USERS);

            User user = null;
            while (resultSet.next()) {
                user = new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return userList;
    }

//    @Override
//    public void insertUser(User user) {
//        try {
//            PreparedStatement preparedStatement =this.baseRepository.getConnection().prepareStatement(INSERT_USERS_SQL);
//            preparedStatement .setString(1,user.getName());
//            preparedStatement .setString(2,user.getEmail());
//            preparedStatement .setString(3,user.getCountry());
//
//            preparedStatement.executeUpdate();
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//    }

    @Override
    public User findById(Integer id) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement(SELECT_USERS_BY_ID);
            preparedStatement.setInt(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }

    @Override
    public boolean save(User user) {
        try {
            PreparedStatement preparedStatement =this.baseRepository.getConnection().prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }


    @Override
    public boolean updateUsers(User user) {
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement(UPDATE_USERS_SQL + "where id="+user.getId());
            preparedStatement .setString(1,user.getName());
            preparedStatement .setString(2,user.getEmail());
            preparedStatement .setString(3,user.getCountry());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean remove(int id) {
        boolean rowDelete = false;
        try {
            PreparedStatement preparedStatement
                    = this.baseRepository.getConnection().prepareStatement("delete from users\n" +
                    "where id=?");
            preparedStatement.setInt(1, id);
            rowDelete =preparedStatement.executeUpdate()>0;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return  rowDelete;
    }

    @Override
    public List<User> searchByName(String name) {
        List<User> list = new ArrayList<>();

        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement("\n" +
                    "select * from users\n" +
                    "where `name` like ?");
            preparedStatement.setString(1,"%" +name +"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            User user = null;
            while (resultSet.next()){
                user = new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));

                list.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return list;
    }

    @Override
    public List<User> sort() {
        List<User> userList = new ArrayList<>();
        try {
            Statement statement = this.baseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("select *\n" +
                    "from users\n" +
                    "order by `name`");
            User user = null;
            while (resultSet.next()) {
                user = new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return userList;
    }

    public static void main(String[] args) {
        UserRepositoryImpl a = new UserRepositoryImpl();
        List<User> b =a.findAll();
        for (User k: b) {
            System.out.println(k);
        }
    }
}

package model.repository.Impl;

import model.bean.Customer;
import model.repository.BaseRepository;
import model.repository.CRUDRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CRUDRepository<Customer> {
    private BaseRepository baseRepository = new BaseRepository();
    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        try {
            Statement statement = this.baseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM furama_management.customer");
            Customer customer = null;
            while (resultSet.next()){
                customer = new Customer();
                customer.setId(resultSet.getString(1));
                customer.setCustomerName(resultSet.getString(2));
                customer.setCustomerBirthday(resultSet.getString(3));
                customer.setCustomerGender(resultSet.getString(4));
                customer.setCustomerIdCard(resultSet.getString(5));
                customer.setCustomerPhone(resultSet.getString(6));
                customer.setCustomerEmail(resultSet.getString(7));
                customer.setCustomerAddress(resultSet.getString(8));
                customer.setCustomerTypeId(resultSet.getInt(9));

                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<Customer> findAllType() {
        List<Customer> listAllType =new ArrayList<>();

        try {
            Statement statement = this.baseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM furama_management.customer_type");
            Customer customerType = null;
            while (resultSet.next()){
                customerType = new Customer();
                customerType.setCustomerTypeId(resultSet.getInt(1));
                customerType.setCustomerTypeName(resultSet.getString(2));

                listAllType.add(customerType);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listAllType;
    }

    @Override
    public boolean insertInto(Customer customer) {
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement("insert into customer (id,customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone\n" +
                    "\t\t\t\t\t,customer_email,customer_address,customer_type_id)\n" +
                    "values\n" +
                    "(?,?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1,customer.getId());
            preparedStatement.setString(2,customer.getCustomerName());
            preparedStatement.setString(3,customer.getCustomerBirthday());
            preparedStatement.setString(4,customer.getCustomerGender());
            preparedStatement.setString(5,customer.getCustomerIdCard());
            preparedStatement.setString(6,customer.getCustomerPhone());
            preparedStatement.setString(7,customer.getCustomerEmail());
            preparedStatement.setString(8,customer.getCustomerAddress());
            preparedStatement.setInt(9,customer.getCustomerTypeId());

            preparedStatement.executeUpdate();
            return  true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public Customer findById(String id) {
        return null;
    }

    @Override
    public boolean edit(Customer service) {
        return false;
    }

    @Override
    public List<Customer> searchByName(String name) {
        return null;
    }

    @Override
    public List<Customer> sort() {
        return null;
    }
}

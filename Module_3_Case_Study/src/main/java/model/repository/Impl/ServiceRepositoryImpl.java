package model.repository.Impl;

import model.bean.Service;
import model.repository.BaseRepository;
import model.repository.CRUDRepository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepositoryImpl implements CRUDRepository<Service> {
    private BaseRepository baseRepository = new BaseRepository();

    @Override
    public List<Service> findAll() {
        List<Service> serviceList = new ArrayList<>();
        try {
            Statement statement = this.baseRepository.getConnection().createStatement();
            ResultSet resultSet =statement.executeQuery("SELECT * FROM furama_management.service ");

            Service service = null;
            while (resultSet.next()){
                service = new Service();
                service.setId(resultSet.getString(1));
                service.setService_name(resultSet.getString(2));
                service.setService_area(resultSet.getDouble(3));
                service.setService_cost(resultSet.getDouble(4));
                service.setService_capacity(resultSet.getInt(5));
                service.setStandard_room(resultSet.getString(6));
                service.setDescription_other_convinience(resultSet.getString(7));
                service.setPool_area(resultSet.getDouble(8));
                service.setNumber_of_fools(resultSet.getInt(9));
                service.setRent_type_id(resultSet.getInt(10));
                service.setService_type_id(resultSet.getInt(11));
                serviceList.add(service);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return serviceList;
    }

    public static void main(String[] args) {
        ServiceRepositoryImpl a = new ServiceRepositoryImpl();
        List<Service> b = a.findAll();
        for (Service k:b ) {
            System.out.println(k);
        }
    }
}

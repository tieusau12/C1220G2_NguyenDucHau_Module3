package model.repository.Impl;

import model.bean.Service;
import model.repository.BaseRepository;
import model.repository.CRUDRepository;

import java.sql.PreparedStatement;
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
            ResultSet resultSet = statement.executeQuery("select s.id, service_name,service_area,service_cost,service_capacity,standard_room,description_other_convenience,\n" +
                    "\t\t\t\t\tpool_area,number_of_floors, rt.rent_type_name, st.service_type_name\n" +
                    "from service s\n" +
                    "left join rent_type rt on s.rent_type_id = rt.id\n" +
                    "left join service_type st on s.service_type_id = st.id");

            Service service = null;
            while (resultSet.next()) {
                service = new Service();
                service.setId(resultSet.getString(1));
                service.setService_name(resultSet.getString(2));
                service.setService_area(resultSet.getDouble(3));
                service.setService_cost(resultSet.getDouble(4));
                service.setService_capacity(resultSet.getInt(5));
                service.setStandard_room(resultSet.getString(6));
                service.setDescription_other_convenience(resultSet.getString(7));
                service.setPool_area(resultSet.getDouble(8));
                service.setNumber_of_floors(resultSet.getInt(9));
                service.setRentTypeName(resultSet.getString(10));
                service.setServiceTypeName(resultSet.getString(11));
                serviceList.add(service);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return serviceList;
    }

    @Override
    public List<Service> findAllType() {
        return null;
    }

    @Override
    public boolean insertInto(Service service) {
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement("insert into service \n" +
                    "values\n" +
                    "(?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1, service.getId());
            preparedStatement.setString(2, service.getService_name());
            preparedStatement.setDouble(3, service.getService_area());
            preparedStatement.setDouble(4, service.getService_cost());
            preparedStatement.setInt(5, service.getService_capacity());
            preparedStatement.setString(6, service.getStandard_room());
            preparedStatement.setString(7, service.getDescription_other_convenience());
            preparedStatement.setDouble(8, service.getPool_area());
            preparedStatement.setInt(9, service.getNumber_of_floors());
            preparedStatement.setInt(10, service.getRent_type_id());
            preparedStatement.setInt(11, service.getService_type_id());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(String id) {
        boolean rowDelete = false;
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement("delete from service \n" +
                    "where id = ?");
            preparedStatement.setString(1, id + "");
            rowDelete = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDelete;
    }

    @Override
    public Service findById(String id) {
        Service service = new Service();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = this.baseRepository.getConnection().prepareStatement("select * from service\n" +
                    "where id = ?");
            preparedStatement.setString(1, id + "");
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                service.setId(resultSet.getString(1));
                service.setService_name(resultSet.getString(2));
                service.setService_area(resultSet.getDouble(3));
                service.setService_cost(resultSet.getDouble(4));
                service.setService_capacity(resultSet.getInt(5));
                service.setStandard_room(resultSet.getString(6));
                service.setDescription_other_convenience(resultSet.getString(7));
                service.setPool_area(resultSet.getDouble(8));
                service.setNumber_of_floors(resultSet.getInt(9));
                service.setRentTypeName(resultSet.getString(10));
                service.setServiceTypeName(resultSet.getString(11));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return service;
    }

    @Override
    public boolean edit(Service service) {
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().prepareStatement("update service\n" +
                    "set  service_name = ?,service_area=?,service_cost=?,service_capacity=?,standard_room=?,\n" +
                    "description_other_convenience = ?, pool_area =?,number_of_floors=?,rent_type_id=?,service_type_id=?\n" +
                    "where id =?");

            preparedStatement.setString(1, service.getService_name());
            preparedStatement.setDouble(2, service.getService_area());
            preparedStatement.setDouble(3, service.getService_cost());
            preparedStatement.setInt(4, service.getService_capacity());
            preparedStatement.setString(5, service.getStandard_room());
            preparedStatement.setString(6, service.getDescription_other_convenience());
            preparedStatement.setDouble(7, service.getPool_area());
            preparedStatement.setInt(8, service.getNumber_of_floors());
            preparedStatement.setInt(9, service.getRent_type_id());
            preparedStatement.setInt(10, service.getService_type_id());
            preparedStatement.setString(11, service.getId());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Service> searchByName(String name) {
        List<Service> list = new ArrayList<>();
        try {
            PreparedStatement statement = this.baseRepository.getConnection().prepareStatement("select *\n" +
                    "from service\n" +
                    "where service_name like ?");
            statement.setString(1, name + "%");
            ResultSet resultSet = statement.executeQuery();
            Service service = null;
            while (resultSet.next()) {
                service = new Service();
                service.setId(resultSet.getString(1));
                service.setService_name(resultSet.getString(2));
                service.setService_area(resultSet.getDouble(3));
                service.setService_cost(resultSet.getDouble(4));
                service.setService_capacity(resultSet.getInt(5));
                service.setStandard_room(resultSet.getString(6));
                service.setDescription_other_convenience(resultSet.getString(7));
                service.setPool_area(resultSet.getDouble(8));
                service.setNumber_of_floors(resultSet.getInt(9));
                service.setRentTypeName(resultSet.getString(10));
                service.setServiceTypeName(resultSet.getString(11));

                list.add(service);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Service> sort() {
        List<Service> serviceList= new ArrayList<>();
        try {
            Statement statement =this.baseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("select * \n" +
                    "from service\n" +
                    "order by  service_name");
            Service service = null;
            while (resultSet.next()){
                service = new Service();
                service.setId(resultSet.getString(1));
                service.setService_name(resultSet.getString(2));
                service.setService_area(resultSet.getDouble(3));
                service.setService_cost(resultSet.getDouble(4));
                service.setService_capacity(resultSet.getInt(5));
                service.setStandard_room(resultSet.getString(6));
                service.setDescription_other_convenience(resultSet.getString(7));
                service.setPool_area(resultSet.getDouble(8));
                service.setNumber_of_floors(resultSet.getInt(9));
                service.setRentTypeName(resultSet.getString(10));
                service.setServiceTypeName(resultSet.getString(11));

                serviceList.add(service);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return serviceList;
    }

//    public static void main(String[] args) {
//        ServiceRepositoryImpl a = new ServiceRepositoryImpl();
////        a.insertInto(new Service("DV-99","Villa-999",45.2 ,900.04,3,"Luxury","Garden View",70.2,	3,	3,	7));
//
//
////        System.out.println(a.edit("House",29,900.0,"Premium","Beach View",20.5,2,3,1,));
////        System.out.println(a.delete("DV-2001"));
////        a.edit(new Service("A",40.0, 40.0,4,"Cui Bap", "bai kem",10.0, 10,10,10));
//        List<Service> b = a.searchByName("Room");
//        for (Service k : b) {
//            System.out.println(k);
//        }
//    }

}


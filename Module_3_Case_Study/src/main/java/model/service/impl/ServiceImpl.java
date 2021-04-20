package model.service.impl;

import model.bean.Service;
import model.repository.CRUDRepository;
import model.repository.Impl.ServiceRepositoryImpl;
import model.service.CRUDService;

import java.util.List;

public class ServiceImpl implements CRUDService<Service> {
    private CRUDRepository<Service> serviceRepository = new ServiceRepositoryImpl();
    @Override
    public List<Service> findAll() {
        return this.serviceRepository.findAll();
    }

    @Override
    public List<Service> findAllType() {
        return null;
    }

    @Override
    public boolean insertInto(Service service) {
        return serviceRepository.insertInto(service);
    }

    @Override
    public boolean delete(String id) {
        return serviceRepository.delete(id);
    }

    @Override
    public Service findById(String id) {
        return serviceRepository.findById(id);
    }

    @Override
    public boolean edit(Service service) {
        return serviceRepository.edit(service);
    }

    @Override
    public List<Service> searchByName(String name) {
        return serviceRepository.searchByName(name);
    }

    @Override
    public List<Service> sort() {
        return serviceRepository.sort();
    }

}

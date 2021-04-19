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
}

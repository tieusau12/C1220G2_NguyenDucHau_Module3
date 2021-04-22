package model.service.impl;

import model.bean.Student;
import model.repository.CRUDRepository;
import model.repository.impl.StudentRepositoryImpl;
import model.service.CRUDService;
import model.service.common.Validation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentServiceImpl implements CRUDService {
    private CRUDRepository repository = new StudentRepositoryImpl();
    @Override
    public List<Student> findAll() {
        return repository.findAll();
    }

    @Override
    public Student findById(String id) {
        return repository.findById(id);
    }

    @Override
    public boolean insertInto(Student student) {
        return repository.insertInto(student);
    }

    @Override
    public boolean delete(String id) {
        return repository.delete(id);
    }

    @Override
    public List<Student> searchByMultipleKeyword(String nameKeyword, String idKeyword, String emailKeyword) {
        return null;
    }

    @Override
    public boolean edit(Student student) {
        return repository.edit(student);
    }

    @Override
    public List<Student> searchByName(String name) {
        return repository.searchByName(name);
    }

    @Override
    public List<Student> sort() {
        return repository.sort();
    }

    @Override
    public Map<String, String> insert(Student student) {
        Map<String,String> mapError = new HashMap<>();
        if (!Validation.validateNameOrAddress(student.getName())){
            mapError.put("name","Invalid format . (ex : Abc Abc) ");
        }

        if (!Validation.validateCustomerCode(student.getId())){
            mapError.put("id","Invalid format . (ex : KH-XXXX , X is a number 0->9)");
        }

        if (!Validation.validateIdCard(student.getIdCard())){
            mapError.put("idCard","Invalid format (ID card has 9 or 12 number) ");
        }

        if (!Validation.validatePhone(student.getPhoneNumber())){
            mapError.put("phone","Invalid format . (ex : 090xxxxxxx or 091xxxxxxx or (84)+90xxxxxxx or (84)+91xxxxxxx)");
        }

//        if (!Validation.validateEmail(student.get())){
//            mapError.put("email","Invalid format (ex abc@abc.abc)");
//        }

        if (!Validation.validateNameOrAddress(student.getAddress())){
            mapError.put("address","Invalid format . (ex : Abc Abc) ");
        }
//
//        if(mapError.isEmpty()){
//            if(!customerRepository.insertNewRecord(customer)){
//                mapError.put("error","Something wrong, try again");
//            }
//        }
        return mapError;
    }
}

package model.repository;

import java.util.List;

public interface CRUDRepository<E> {
    List<E> findAll();
    List<E> findAllType();
    boolean insertInto(E e);


    boolean delete(String id);

    E findById(String id);

    boolean edit(E service);

    List<E> searchByName(String name);

    List<E> sort();
}

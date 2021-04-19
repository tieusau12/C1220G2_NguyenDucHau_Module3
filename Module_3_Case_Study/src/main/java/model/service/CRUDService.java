package model.service;

import java.util.List;

public interface CRUDService<E> {
    List<E> findAll();
    boolean insertInto(E e);
    boolean delete(String id);

    E findById(String id);

    boolean edit(E e);
    List<E> searchByName(String name);
    List<E> sort();
}

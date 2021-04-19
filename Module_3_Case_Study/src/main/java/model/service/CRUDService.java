package model.service;

import java.util.List;

public interface CRUDService<E> {
    List<E> findAll();
}

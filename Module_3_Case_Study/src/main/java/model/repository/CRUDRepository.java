package model.repository;

import java.util.List;

public interface CRUDRepository<E> {
    List<E> findAll();
}

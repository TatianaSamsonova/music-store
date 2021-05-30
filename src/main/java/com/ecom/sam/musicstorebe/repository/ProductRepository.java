package com.ecom.sam.musicstorebe.repository;

import com.ecom.sam.musicstorebe.model.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Long> {
}

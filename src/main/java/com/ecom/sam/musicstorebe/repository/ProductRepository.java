package com.ecom.sam.musicstorebe.repository;

import com.ecom.sam.musicstorebe.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
}

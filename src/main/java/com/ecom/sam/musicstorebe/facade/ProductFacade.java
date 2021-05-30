package com.ecom.sam.musicstorebe.facade;

import com.ecom.sam.musicstorebe.model.Product;

import java.util.List;

public interface ProductFacade {
    void addProduct(Product product);
    Product getProductById(long productId);
    List<Product> getAllProducts();
    void deleteProduct(Product product);
}

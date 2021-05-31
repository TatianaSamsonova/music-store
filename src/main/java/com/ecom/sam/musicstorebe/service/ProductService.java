package com.ecom.sam.musicstorebe.service;

import com.ecom.sam.musicstorebe.model.Product;

import java.util.List;

public interface ProductService {
    void addProduct(Product product);
    Product getProductById(long productId);
    List<Product> getAllProducts();
    void deleteProduct(Product product);
    void deleteProductById(long productId);
}

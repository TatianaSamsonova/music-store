package com.ecom.sam.musicstorebe.service.impl;

import com.ecom.sam.musicstorebe.repository.ProductRepository;
import com.ecom.sam.musicstorebe.service.ProductService;
import com.ecom.sam.musicstorebe.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public void addProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product getProductById(long productId) {
        return productRepository.findById(productId)
                .orElseThrow(EntityNotFoundException::new);
    }

    @Override
    public List<Product> getAllProducts() {
        return (List<Product>) productRepository.findAll();
    }

    @Override
    public void deleteProduct(Product product) {
        productRepository.delete(product);
    }
}

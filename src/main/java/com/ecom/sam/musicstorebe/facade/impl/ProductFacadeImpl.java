package com.ecom.sam.musicstorebe.facade.impl;

import com.ecom.sam.musicstorebe.facade.ProductFacade;
import com.ecom.sam.musicstorebe.model.Product;
import com.ecom.sam.musicstorebe.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProductFacadeImpl implements ProductFacade {

    @Autowired
    private ProductService productService;

    @Override
    public void addProduct(Product product) {
       productService.addProduct(product);
    }

    @Override
    public Product getProductById(long productId) {
        return productService.getProductById(productId);
    }

    @Override
    public List<Product> getAllProducts() {
        return productService.getAllProducts();
    }

    @Override
    public void deleteProduct(Product product) {
        productService.deleteProduct(product);
    }
}

package com.ecom.sam.musicstorebe.controller;

import com.ecom.sam.musicstorebe.facade.ProductFacade;
import com.ecom.sam.musicstorebe.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.IOException;
import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductFacade productFacade;

    @GetMapping("/")
    public String hello(){return "home";}

    @GetMapping("/products")
    public String getProducts(Model model){
        List<Product> products = productFacade.getAllProducts();
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/products/details/{id}")
    public String getProductDetails(@PathVariable long id, Model model) throws IOException {
        Product product = productFacade.getProductById(id);
        model.addAttribute("product", product);
        return "details";
    }

}

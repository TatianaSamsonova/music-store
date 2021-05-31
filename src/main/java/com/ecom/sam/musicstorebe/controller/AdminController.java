package com.ecom.sam.musicstorebe.controller;

import com.ecom.sam.musicstorebe.facade.ProductFacade;
import com.ecom.sam.musicstorebe.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private ProductFacade productFacade;

    @GetMapping("/admin")
    public String getAdmin(){return "admin/admin";}

    @GetMapping("/admin/products")
    public String createProduct(Model model){
        List<Product> products = productFacade.getAllProducts();
        model.addAttribute("products", products);
        return "admin/productCreation";
    }
    
    @GetMapping("/admin/product/add")
    public String addProduct(Model model){
        Product product = new Product();
        product.setCategory("instruments");
        product.setCondition("new");

        model.addAttribute("product", product);
        return "admin/addProduct";
    }

    @PostMapping("/admin/product/add")
    public String addProduct(@ModelAttribute("product") Product product){
       productFacade.addProduct(product);
       return "redirect:../products";
    }

    @GetMapping("/admin/delete/{id}")
    public String deleteProduct(@PathVariable long id, Model model){
        productFacade.deleteProductById(id);
        return "redirect:../products";
    }
}

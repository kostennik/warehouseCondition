package com.example.myapp.web;

import com.example.myapp.data.ProductRepository;

import com.example.myapp.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
public class HomeController {

  private final ProductRepository productRepository;

  @Autowired
  public HomeController(ProductRepository productRepository) {
    this.productRepository = productRepository;
  }

  @GetMapping("/showAllByName")
  public List<Product> showAllByName() {
    return productRepository.getAllByName();
  }
}


package com.example.myapp.data;

import com.example.myapp.models.Product;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.test.context.junit4.SpringRunner;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Transactional
@SpringBootTest
@RunWith(SpringRunner.class)
class ProductRepositoryImplTest {

    ProductRepository productRepository;

    @Autowired
    public ProductRepositoryImplTest(ProductRepositoryImpl productRepository) {
        this.productRepository = productRepository;
    }

    @BeforeEach
    void setUp() {

    }

    @Test
    void getAllByName() {

        List<Product> products = productRepository.getAllByName();
        for (Product product : products){
            System.out.println("-----------------");
            System.out.println(product);
        }
    }
}
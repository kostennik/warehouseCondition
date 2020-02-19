package com.example.myapp.data;

import com.example.myapp.models.Product;

import java.util.List;

public interface ProductRepository {
    public List<Product> getAllByName();

}

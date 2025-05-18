package com.kiendey.dao;

import com.kiendey.model.Brand;

import java.util.List;

public interface BrandDAO {
    // Define methods for CRUD operations on Brand entities
    void createBrand(Brand Brand);
    Brand readBrand(String id);
    void updateBrand(Brand Brand);
    void deleteBrand(String id);
    List<Brand> getAllBrands();
    List<Brand> searchBrandsByName(String name);
}

package com.kiendey.dao;

import java.util.List;

public interface CategoryDAO {
    // Define methods for CRUD operations on Category entities
    void createCategory(String categoryName);
    String readCategory(String id);
    void updateCategory(String id, String categoryName);
    void deleteCategory(String id);
    List<String> getAllCategories();
    List<String> searchCategoriesByName(String name);
}

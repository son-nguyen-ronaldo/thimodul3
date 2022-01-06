package service;

import dao.CategoryDAO;
import model.Category;

import java.util.List;

public class CategoryService {
    static public List<Category> findAll() {
        return CategoryDAO.getAllCategory();
    }
}

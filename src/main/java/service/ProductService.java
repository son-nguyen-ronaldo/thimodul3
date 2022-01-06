package service;

import dao.ProductDAO;
import model.Product;

import java.util.List;

public class ProductService {
    static List<Product> products =  ProductDAO.getAllProduct();

    public List<Product> findAll() {
        return products = ProductDAO.getAllProduct();
    }

    public void save(Product product) {
        ProductDAO.saveProduct(product);
        products = ProductDAO.getAllProduct();
    }

    public void update(int id, Product product) {
        ProductDAO.editProduct(id, product);
    }

    public void remove(int id) {
        ProductDAO.deleteProduct(id);
    }

    public List<Product> findProductByName(String name) {
        return ProductDAO.findProductByName(name);
    }

    public Product findById(int id) {
        for (Product product: products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }
}

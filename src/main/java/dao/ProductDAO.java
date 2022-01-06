package dao;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static Connection connection = ConnectMySql.getConnection();

    public static List<Product> getAllProduct() {
        String sqlGetAll = "SELECT * FROM product";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlGetAll);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Product> productList = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String color = resultSet.getString("color");
                String mota = resultSet.getString("mota");
                String nameCategory = resultSet.getString("name");


                productList.add(new Product(id, name,price,quantity,color,mota,nameCategory));
            }
            return productList;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void saveProduct(Product product) {
        String saveSQl = "INSERT INTO product(name,price,quantity,color,mota) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(saveSQl);
            preparedStatement.setString(1,product.getName());
            preparedStatement.setDouble(2,product.getPrice());
            preparedStatement.setInt(3,product.getQuantity());
            preparedStatement.setString(4,product.getColor());
            preparedStatement.setString(5,product.getMota());
            preparedStatement.execute();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void deleteProduct(int id){
        String deleteSQL = "DELETE from product where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(deleteSQL);
            preparedStatement.setInt(1,id);
            preparedStatement.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void editProduct(int id, Product product) {
        String editSQL = "UPDATE product set name=?, price=?, quantity=?, color=?, mota=? where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(editSQL);

            preparedStatement.setString(1,product.getName());
            preparedStatement.setDouble(2,product.getPrice());
            preparedStatement.setInt(3,product.getQuantity());
            preparedStatement.setString(4,product.getColor());
            preparedStatement.setString(5,product.getMota());
            preparedStatement.setInt(6,id);

            preparedStatement.execute();
        } catch (SQLException throwAbles) {
            throwAbles.printStackTrace();
        }
    }

    public static List<Product> findProductByName(String nameFind) {
        String sqlFindByName = "SELECT product.*, category.name as category FROM product join category on product.id_category = category.id" +
                "where product.name like '%"+nameFind+"%\'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlFindByName);
            List<Product> productList = new ArrayList<>();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                Double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String color = resultSet.getString("color");
                String mota = resultSet.getString("mota");
                int idCategory = resultSet.getInt("id_category");

                productList.add(new Product(id,name,price,quantity,color,mota,idCategory));
            }
            return productList;

        } catch (SQLException throwAbles) {
            throwAbles.printStackTrace();
        }
        return null;
    }
}

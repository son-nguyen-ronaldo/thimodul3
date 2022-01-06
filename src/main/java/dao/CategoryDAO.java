package dao;

import model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    private static Connection connection = ConnectMySql.getConnection();

    public static List<Category> getAllCategory() {
        String sqlGetAll = "SELECT * FROM category";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlGetAll);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Category> categories = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");

                categories.add(new Category(id,name));
            }
            return categories;
        } catch (SQLException throwAbles) {
            throwAbles.printStackTrace();
        }
        return null;
    }
}

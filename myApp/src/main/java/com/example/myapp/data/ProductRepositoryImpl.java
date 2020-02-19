package com.example.myapp.data;

import com.example.myapp.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ProductRepositoryImpl implements ProductRepository {
    private JdbcTemplate jdbc;

    @Autowired
    public ProductRepositoryImpl(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public List<Product> getAllByName() {

        return jdbc.query("SELECT product.product_id, product.product_name, product.product_code, brand.brand_name,\n" +
                        "       rack.rack_name, product_on_rack.quantity AS quantity_on_rack," +
                        "       product_on_storehouse.quantity AS quantity_on_storehouse" +
                        "    FROM product, brand, rack, product_on_rack, product_on_storehouse" +
                        "        WHERE (product.brand_id = brand.brand_id" +
                        "                AND product_on_rack.product_id = product.product_id" +
                        "                AND product_on_rack.rack_id = rack.rack_id" +
                        "                AND product_on_storehouse.product_id = product_on_rack.product_id" +
                        "                AND product_on_storehouse.quantity > 0)" +
                        "        ORDER BY product_on_rack.quantity",
                this::mapRowToProduct);
    }

    private Product mapRowToProduct(ResultSet rs, int rowNum) throws SQLException {
        return new Product(
                rs.getInt("product_id"),
                rs.getString("product_name"),
                rs.getString("product_code"),
                rs.getString("brand_name"),
                rs.getString("rack_name"),
                rs.getInt("quantity_on_rack"),
                rs.getInt("quantity_on_storehouse"));
    }

}

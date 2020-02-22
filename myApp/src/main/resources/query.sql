SELECT product.product_id, product.product_name, product.product_code, brand.brand_name,
       rack.rack_name, product_on_rack.quantity AS quantity_on_rack,
       product_on_storehouse.quantity AS quantity_on_storehouse
    FROM product, brand, rack, product_on_rack, product_on_storehouse
        WHERE (product.brand_id = brand.brand_id
                AND product_on_rack.product_id = product.product_id
                AND product_on_rack.rack_id = rack.rack_id
                AND product_on_storehouse.product_id = product_on_rack.product_id
                AND product_on_storehouse.quantity > 0)
        ORDER BY product_on_rack.quantity;
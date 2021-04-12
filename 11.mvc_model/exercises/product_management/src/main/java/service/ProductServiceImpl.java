package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
        private static Map<Integer, Product> productMap;

        static {
            productMap = new HashMap<>();
            productMap.put(1, new Product(1,"Iphone Xs Max","Apple", "Gold 64GB", 500.0));
            productMap.put(2, new Product(2,"SamSung Note 10 Plus","SamSung", "Silver 128GB", 560.0));
            productMap.put(3, new Product(3,"Xiaomi Mi Note 10","Xiaomi", "Red 64GB", 340.0));
            productMap.put(4, new Product(4,"Sony A89","Sony", "Black 64GB", 200.0));
            productMap.put(5, new Product(5,"Nokia N8","Nokia", "Black 32GB", 150.0));
        }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public Product findById(Integer id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(Integer id) {
        productMap.remove(id);
    }
}

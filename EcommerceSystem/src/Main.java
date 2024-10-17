package com.ecommerce;
import com.ecommerce.models.Product;
import com.ecommerce.models.User;
import com.ecommerce.inventory.InventoryManag;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {

        Product p1 = new Product("P001", "Laptop", 1000.0, 50);
        Product p2 = new Product("P002", "Phone", 500.0, 5);

        List<Product> products = new ArrayList<>();
        products.add(p1);
        products.add(p2);


        List<Integer> orderQuantities = new ArrayList<>();
        orderQuantities.add(10);
        orderQuantities.add(3);

        InventoryManag inventory = new InventoryManag();
        inventory.processOrders(products, orderQuantities);

        List<Integer> restockQuantities = new ArrayList<>();
        restockQuantities.add(20);
        restockQuantities.add(10);

        inventory.restockItems(products, restockQuantities);
    }
}

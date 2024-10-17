package com.ecommerce.inventory;

import com.ecommerce.models.Product;
import java.util.List;

public class InventoryManag {


    public void processOrders(List<Product> products, List<Integer> orderQuantities) {
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            int orderQuantity = orderQuantities.get(i);

            if (product.getStock() >= orderQuantity) {
                product.setStock(product.getStock() - orderQuantity);
                System.out.println("Processed order for " + orderQuantity + " " + product.getName());
            } else {
                System.out.println("Not enough stock for " + product.getName() + ". Order cannot be processed.");
            }


            if (product.getStock() < 10) {
                System.out.println("Alert: Low stock for " + product.getName() + ". Consider restocking.");
            }
        }
    }


    public void restockItems(List<Product> products, List<Integer> restockQuantities) {
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            int restockQuantity = restockQuantities.get(i);
            product.setStock(product.getStock() + restockQuantity);
            System.out.println("Restocked " + restockQuantity + " units of " + product.getName());
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Cuong
 */
public class ProductFacade {
    private List<Product> products = null;

    public ProductFacade() {
        products  = new ArrayList<>();
        products.add(new Product(1, "Apple", 10));
        products.add(new Product(2, "Banana", 8));
        products.add(new Product(3, "Orange", 9));
    }
    
    public List<Product> select(){
        return products;
    }
    
    public Product select(int id){
        for(Product product: products){
            if(product.getId() == id){
                return product;
            }
        }
        return null;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Cuong
 */
public class Cart {
    private Map<Integer, Item> map = null;

    public Cart() {
        map = new HashMap<>();
    }
    
    public void add(Item item){
        int id = item.getProduct().getId();
        if(map.containsKey(id)){
            Item oldItem = map.get(id);
            oldItem.setQuantity(oldItem.getQuantity() + item.getQuantity());
        }
        else{
            map.put(id, item);
        }
    }
    public void update(int id, int quantity){
        Item item = map.get(id);
        item.setQuantity(quantity);
    }
    public void remove(int id){
        map.remove(id);
    }
    public void empty(){
        map.clear();
    }

    public Map<Integer, Item> getMap() {
        return map;
    }

    public void setMap(Map<Integer, Item> map) {
        this.map = map;
    }
    
    public Collection<Item> getItem(){
        return map.values();
    }
    
}

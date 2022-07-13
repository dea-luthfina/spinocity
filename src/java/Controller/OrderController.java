/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Helper.StringHelper;
import Model.OrderModel;
import Query.OrderQuery;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

public class OrderController extends BaseController{
        OrderQuery query = new OrderQuery();

    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }

    public boolean create(OrderModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getPhone());
        map.put(3, model.getAlbum_name());
        map.put(4, model.getAlbum_genre());
        map.put(5, model.getAmount());
        map.put(6, model.getTotal_price());
        map.put(7, model.getOrder_date());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }

    public ResultSet getByName(String name) {
        String sql = this.query.getByName;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, StringHelper.parseLikeQuery(name));
        
        return this.getWithParameter(map, sql);
    }

    public ResultSet getById(String id_order) {
        String sql = this.query.getById;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id_order);
        
        return this.getWithParameter(map, sql);
    }
    
    public boolean update(String id_order, OrderModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getPhone());
        map.put(3, model.getAlbum_name());
        map.put(4, model.getAlbum_genre());
        map.put(5, model.getAmount());
        map.put(6, model.getTotal_price());
        map.put(7, model.getOrder_date());
        map.put(8, id_order);
        
        String sql = this.query.update;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean delete(String id_order) throws ParseException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id_order);
        
        String sql = this.query.delete;
        return this.preparedStatement(map, sql);
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Helper.StringHelper;
import Model.AlbumModel;
import Query.AlbumQuery;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Prio
 */
public class AlbumController extends BaseController{
    AlbumQuery query = new AlbumQuery();

    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }

    public boolean create(AlbumModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getArtist());
        map.put(3, model.getYears());
        map.put(4, model.getGenre());
        map.put(5, model.getPrice());
        map.put(6, model.getStock());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }

    public ResultSet getByName(String name) {
        String sql = this.query.getByName;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, StringHelper.parseLikeQuery(name));
        
        return this.getWithParameter(map, sql);
    }

    public ResultSet getById(String id_album) {
        String sql = this.query.getById;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id_album);
        
        return this.getWithParameter(map, sql);
    }
    
    public boolean update(String id_album, AlbumModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getArtist());
        map.put(3, model.getYears());
        map.put(4, model.getGenre());
        map.put(5, model.getPrice());
        map.put(6, model.getStock());
        map.put(7, id_album);
        
        String sql = this.query.update;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean delete(String id_album) throws ParseException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id_album);
        
        String sql = this.query.delete;
        return this.preparedStatement(map, sql);
    }
}

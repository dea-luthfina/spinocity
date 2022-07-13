/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Helper.StringHelper;
import Model.MembersModel;
import Query.MembersQuery;
import javax.mail.internet.ParseException;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class MembersController extends BaseController{
     MembersQuery query = new MembersQuery();
    
    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }

    public boolean create(MembersModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getEmail());
        map.put(3,model.getContact());
        map.put(4,model.getUsername());
        map.put(5,model.getPassword());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }

}

    
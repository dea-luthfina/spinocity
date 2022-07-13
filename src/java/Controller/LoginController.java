/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Query.AuthenQuery;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author reCOnsult_L045
 */
public class LoginController extends BaseController{
     AuthenQuery query = new AuthenQuery();
    
    public ResultSet getByUsername(String username) {
        String sql = this.query.getByUsername;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, username);
        
        return this.getWithParameter(map, sql);
    }
}

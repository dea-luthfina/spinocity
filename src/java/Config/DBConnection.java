/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Prio
 */
public class DBConnection {
    public Connection open() {
        Connection con;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/spinocity";
            con = DriverManager.getConnection(url, "root", "");
            return con;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}

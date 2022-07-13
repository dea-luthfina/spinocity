/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Query;

/**
 *
 * @author reCOnsult_L045
 */
public class MembersQuery {
    public String get = "SELECT * FROM members";

    public String create = "INSERT INTO members (name, email, " + 
            "contact, username, password) VALUES (?, ?, ?, ?, ?)";
}

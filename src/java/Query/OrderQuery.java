/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Query;

public class OrderQuery {
    public String get = "SELECT * FROM orders";

    public String create = "INSERT INTO orders (name, phone, album_name, album_genre, "
     + "amount, total_price, order_date) VALUES (?, ?, ?, ?, ?, ?, ?)";

    public String getByName = "SELECT * FROM orders where name LIKE ?";

    public String getById = "SELECT * FROM orders where id_order = ?";   

    public String update = "UPDATE orders SET name = ?, phone = ?, "
            + "album_name = ?, album_genre = ?, amount = ?, total_price = ?, order_date = ?"
            + ", WHERE id_order = ?";

    public String delete = "DELETE FROM orders WHERE id_order = ?";
}

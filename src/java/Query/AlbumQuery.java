/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Query;

public class AlbumQuery {
    public String get = "SELECT * FROM albums";

    public String create = "INSERT INTO albums (name, artist, years, genre, "
     + "price, stock) VALUES (?, ?, ?, ?, ?, ?)";

    public String getByName = "SELECT * FROM albums where name LIKE ?";

    public String getById = "SELECT * FROM albums where id_album = ?";   

    public String update = "UPDATE albums SET name = ?, artist = ?, "
            + "years = ?, genre = ?, price = ?, stock = ? WHERE id_album = ?";

    public String delete = "DELETE FROM albums WHERE id_album = ?";
}

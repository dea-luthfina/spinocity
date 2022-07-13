/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Prio
 */
public class OrderModel {
    private String name;
    private String phone;
    private String album_name;
    private String album_genre;
    private String amount;
    private String total_price;
    private String order_date;

    public void setTotal_price(String total_price) {
        this.total_price = total_price;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public void setAlbum_name(String album_name) {
        this.album_name = album_name;
    }

    public void setAlbum_genre(String album_genre) {
        this.album_genre = album_genre;
    }

    public String getTotal_price() {
        return total_price;
    }

    public String getPhone() {
        return phone;
    }

    public String getOrder_date() {
        return order_date;
    }

    public String getName() {
        return name;
    }

    public String getAmount() {
        return amount;
    }

    public String getAlbum_name() {
        return album_name;
    }

    public String getAlbum_genre() {
        return album_genre;
    }

}

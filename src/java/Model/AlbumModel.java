/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Prio
 */
public class AlbumModel {
    private String name;
    private String artist;
    private String price;
    private String stock;
    private String genre;
    private String years;

    public String getGenre() {
        return genre;
    }

    public String getYears() {
        return years;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setYears(String years) {
        this.years = years;
    }
   
    public String getName() {
        return name;
    }

    public String getArtist() {
        return artist;
    }

    public String getPrice() {
        return price;
    }

    public String getStock() {
        return stock;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }
}

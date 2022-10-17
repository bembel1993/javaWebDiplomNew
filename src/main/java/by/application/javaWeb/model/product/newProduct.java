package by.application.javaWeb.model.product;

import javax.persistence.*;

public class newProduct {

    protected int id;

    protected String nameprod;

    protected String price;

    protected String manufacturer;

    protected String releaseDate;

    public newProduct() {

    }

    public newProduct(String nameprod, String price, String manufacturer, String releaseDate, byte[] photo) {
        super();
        this.nameprod = nameprod;
        this.price = price;
        this.manufacturer = manufacturer;
        this.releaseDate = releaseDate;
    }

    public newProduct(int Id, String nameprod, String price, String manufacturer, String releaseDate) {
        super();
        this.id = id;
        this.nameprod = nameprod;
        this.price = price;
        this.manufacturer = manufacturer;
        this.releaseDate = releaseDate;
    }

    public newProduct(int Id, String nameprod, String price, String manufacturer, String releaseDate, byte[] photo) {
        this.id = id;
        this.nameprod = nameprod;
        this.price = price;
        this.manufacturer = manufacturer;
        this.releaseDate = releaseDate;
    }

    public newProduct(newProduct newproduct) {
    }

    public newProduct(int id) {
        this.id = id;
    }

    public newProduct(String nameprod, String price, String manufacturer, String releaseDate) {
        this.nameprod = nameprod;
        this.price = price;
        this.manufacturer = manufacturer;
        this.releaseDate = releaseDate;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameprod() {
        return nameprod;
    }

    public void setNameprod(String nameprod) {
        this.nameprod = nameprod;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    @Override
    public String toString() {
        return "\nProduct{" +
                "id=" + id +
                ", nameprod='" + nameprod + '\'' +
                ", price='" + price + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", releaseDate='" + releaseDate + '}';
    }
}

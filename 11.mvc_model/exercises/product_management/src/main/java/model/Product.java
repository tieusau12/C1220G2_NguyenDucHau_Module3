package model;

public class Product {
    private Integer id;
    private String name;
    private String manufacturer;
    private String detail;
    private double price;

    public Product(Integer id, String name, String manufacturer, String detail, double price) {
        this.id = id;
        this.name = name;
        this.manufacturer = manufacturer;
        this.detail = detail;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}

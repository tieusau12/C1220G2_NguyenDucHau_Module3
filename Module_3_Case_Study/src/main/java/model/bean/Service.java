package model.bean;

public class Service {
    private String id;
    private String service_name;
    private Double service_area;
    private Double service_cost;
    private Integer service_capacity;
    private String standard_room;
    private String description_other_convinience;
    private Double pool_area;
    private Integer number_of_fools;
    private Integer rent_type_id;
    private Integer service_type_id;

    public Service() {
    }

    public Service(String service_name, Double service_area, Double service_cost, Integer service_capacity, String standard_room, String description_other_convinience, Double pool_area, Integer number_of_fools,
                   Integer rent_type_id, Integer service_type_id) {
        this.service_name = service_name;
        this.service_area = service_area;
        this.service_cost = service_cost;
        this.service_capacity = service_capacity;
        this.standard_room = standard_room;
        this.description_other_convinience = description_other_convinience;
        this.pool_area = pool_area;
        this.number_of_fools = number_of_fools;
        this.rent_type_id = rent_type_id;
        this.service_type_id = service_type_id;
    }

    public Service(String id, String service_name, Double service_area, Double service_cost, Integer service_capacity, String standard_room, String description_other_convinience, Double pool_area, Integer number_of_fools,
                   Integer rent_type_id, Integer service_type_id) {
        this.id = id;
        this.service_name = service_name;
        this.service_area = service_area;
        this.service_cost = service_cost;
        this.service_capacity = service_capacity;
        this.standard_room = standard_room;
        this.description_other_convinience = description_other_convinience;
        this.pool_area = pool_area;
        this.number_of_fools = number_of_fools;
        this.rent_type_id = rent_type_id;
        this.service_type_id = service_type_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getService_name() {
        return service_name;
    }

    public void setService_name(String service_name) {
        this.service_name = service_name;
    }

    public Double getService_area() {
        return service_area;
    }

    public void setService_area(Double service_area) {
        this.service_area = service_area;
    }

    public Double getService_cost() {
        return service_cost;
    }

    public void setService_cost(Double service_cost) {
        this.service_cost = service_cost;
    }

    public Integer getService_capacity() {
        return service_capacity;
    }

    public void setService_capacity(Integer service_capacity) {
        this.service_capacity = service_capacity;
    }

    public String getStandard_room() {
        return standard_room;
    }

    public void setStandard_room(String standard_room) {
        this.standard_room = standard_room;
    }

    public String getDescription_other_convinience() {
        return description_other_convinience;
    }

    public void setDescription_other_convinience(String description_other_convinience) {
        this.description_other_convinience = description_other_convinience;
    }

    public Double getPool_area() {
        return pool_area;
    }

    public void setPool_area(Double pool_area) {
        this.pool_area = pool_area;
    }

    public Integer getNumber_of_fools() {
        return number_of_fools;
    }

    public void setNumber_of_fools(Integer number_of_fools) {
        this.number_of_fools = number_of_fools;
    }

    public Integer getRent_type_id() {
        return rent_type_id;
    }

    public void setRent_type_id(Integer rent_type_id) {
        this.rent_type_id = rent_type_id;
    }

    public Integer getService_type_id() {
        return service_type_id;
    }

    public void setService_type_id(Integer service_type_id) {
        this.service_type_id = service_type_id;
    }

    @Override
    public String toString() {
        return "Service{" +
                "id='" + id + '\'' +
                ", service_name='" + service_name + '\'' +
                ", service_area=" + service_area +
                ", service_cost=" + service_cost +
                ", service_capacity=" + service_capacity +
                ", standard_room='" + standard_room + '\'' +
                ", description_other_convinience='" + description_other_convinience + '\'' +
                ", pool_area=" + pool_area +
                ", number_of_fools=" + number_of_fools +
                ", rent_type_id=" + rent_type_id +
                ", service_type_id=" + service_type_id +
                '}';
    }
}


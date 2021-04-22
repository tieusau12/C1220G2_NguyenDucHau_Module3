package model.bean;

public class Student {
    private String id;
    private String name;
    private String address;
    private String idCard;
    private String dateOfBirth;
    private String classId;
    private String phoneNumber;

    public Student() {
    }

    public Student(String name, String address, String idCard, String dateOfBirth, String classId, String phoneNumber) {
        this.name = name;
        this.address = address;
        this.idCard = idCard;
        this.dateOfBirth = dateOfBirth;
        this.classId = classId;
        this.phoneNumber = phoneNumber;
    }

    public Student(String id, String name, String address, String idCard, String dateOfBirth, String classId, String phoneNumber) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.idCard = idCard;
        this.dateOfBirth = dateOfBirth;
        this.classId = classId;
        this.phoneNumber = phoneNumber;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", idCard=" + idCard +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", classId='" + classId + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }
}

package pojo;

import java.util.Comparator;

public class Car {

    private int idCar;
    private String number;
    private String brand;
    private String color;
    private int year;
    private String country;
    private Owner owner;
    private String date;

    public Car() {

    }

    public Car(int idCar, String number, String brand, String color, int year,
            String country, Owner owner, String date) {
        this.idCar = idCar;
        this.number = number;
        this.brand = brand;
        this.color = color;
        this.year = year;
        this.country = country;
        this.owner = owner;
        this.date = date;
    }

    public int getIdCar() {
        return idCar;
    }

    public void setIdCar(int idCar) {
        this.idCar = idCar;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return idCar + " " + number + " " + brand
                + " " + color + " " + year + " " + country + " "
                + owner.toString() + date;
    }

    //Сортировать по номеру
    public static Comparator<Car> numberSort = new Comparator<Car>() {

        /*String StudentName1 = s1.getStudentname().toUpperCase();
	   String StudentName2 = s2.getStudentname().toUpperCase();*/
        @Override
        public int compare(Car c1, Car c2) {
            return c1.getNumber().compareTo(c2.getNumber());
        }
    };

    //Сортировать по марке
    public static Comparator<Car> brandSort = new Comparator<Car>() {

        @Override
        public int compare(Car c1, Car c2) {
            return c1.getBrand().compareTo(c2.getBrand());
        }
    };

    //Сортировать по году выпуска
    public static Comparator<Car> yearSort = new Comparator<Car>() {

        @Override
        public int compare(Car c1, Car c2) {
            return c1.getYear() - c2.getYear();
        }
    };

    //Сортировать по имени
    public static Comparator<Car> nameSort = new Comparator<Car>() {

        @Override
        public int compare(Car c1, Car c2) {
            return c1.getOwner().getFirstName().compareTo(c2.getOwner().getFirstName());
        }
    };
}

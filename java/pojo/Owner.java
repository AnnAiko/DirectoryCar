package pojo;

public class Owner {

    private String firstName;
    private String lastName;
    private String address;
    private String phone;
    private String dateBirth;

    public Owner() {

    }

    public Owner(String firstName, String lastName, String address,
            String phone, String dateBirth) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.phone = phone;
        this.dateBirth = dateBirth;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDataBirth() {
        return dateBirth;
    }

    public void setDataBirth(String dateBirth) {
        this.dateBirth = dateBirth;
    }

    @Override
    public String toString() {
        return firstName + " " + lastName + " " + address
                + " " + phone + " " + dateBirth;
    }
}

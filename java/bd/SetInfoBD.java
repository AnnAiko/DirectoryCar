package bd;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import pojo.Car;

public class SetInfoBD {

    public int setCar(Connection connection, Car car) throws ClassNotFoundException, SQLException {
        //Получить id brand
        int brand = 0;
        String SQLSelectBrand = "SELECT id FROM brands WHERE brand=? ";
        PreparedStatement pSelectBrand = connection.prepareStatement(SQLSelectBrand);
        pSelectBrand.setString(1, car.getBrand());
        ResultSet resSelectBrand = pSelectBrand.executeQuery();
        while (resSelectBrand.next()) {
            brand = resSelectBrand.getInt("id");
        }

        //Получить id color
        int color = 0;
        String SQLSelectColor = "SELECT id FROM colors WHERE color=? ";
        PreparedStatement pSelectColor = connection.prepareStatement(SQLSelectColor);
        pSelectColor.setString(1, car.getColor());
        ResultSet resSelectColor = pSelectColor.executeQuery();
        while (resSelectColor.next()) {
            color = resSelectColor.getInt("id");
        }

        //Получить id Country
        int country = 0;
        String SQLSelectCountry = "SELECT id FROM countries WHERE country=? ";
        PreparedStatement pSelectCountry = connection.prepareStatement(SQLSelectCountry);
        pSelectCountry.setString(1, car.getCountry());
        ResultSet resSelectCountry = pSelectCountry.executeQuery();
        while (resSelectCountry.next()) {
            country = resSelectCountry.getInt("id");
        }

        //Вставить owner в БД
        String SQLInserOwner = "INSERT INTO owners (FirstName,LastName,Address,Phone,DateBirth) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pInserOwner = connection.prepareStatement(SQLInserOwner);
        pInserOwner.setString(1, car.getOwner().getFirstName());
        pInserOwner.setString(2, car.getOwner().getLastName());
        pInserOwner.setString(3, car.getOwner().getAddress());
        pInserOwner.setString(4, car.getOwner().getPhone());
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        java.sql.Date sqlDate = null;
        try {
            Date apptDay = (Date) dateFormat.parse(car.getOwner().getDataBirth());
            sqlDate = new java.sql.Date(apptDay.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        pInserOwner.setDate(5, sqlDate);
        pInserOwner.executeUpdate();

        //Получить последную запись из таблицы из owner
        int owner = 0;
        String SQLSelectOwner = "SELECT id FROM owners  ORDER BY id DESC LIMIT 1";
        //SELECT id FROM owners  WHERE id=LAST_INSERT_ID();
        PreparedStatement pSelectOwner = connection.prepareStatement(SQLSelectOwner);
        ResultSet resSelectOwner = pSelectOwner.executeQuery();
        while (resSelectOwner.next()) {
            owner = resSelectOwner.getInt("id");
        }
        java.sql.Date sqDate = null;
        try {
            Date date = dateFormat.parse(car.getDate());
            sqDate = new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //Вставить запись в cars
        String SQL = "INSERT INTO cars (mark,IdBrand ,IdColor,YearMan,IdContry,IdOwer,DateAdd) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(SQL);
        preparedStatement.setString(1, car.getNumber());
        preparedStatement.setInt(2, brand);
        preparedStatement.setInt(3, color);
        preparedStatement.setInt(4, car.getYear());
        preparedStatement.setInt(5, country);
        preparedStatement.setInt(6, owner);
        preparedStatement.setDate(7, sqDate);
        int error = preparedStatement.executeUpdate();
        return error;
    }
}

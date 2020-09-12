package bd;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import pojo.Car;
import pojo.Owner;

public class GetInfoBD {

    //Получить список всех машин
    public ArrayList getListCars(Connection connection) throws ClassNotFoundException, SQLException {
        ArrayList<Car> listCar = new ArrayList<Car>();
        String SQL = "SELECT cars.id, cars.mark, brands.Brand, "
                + "colors.Color, cars.YearMan,  cars.DateAdd, countries.Country, owners.FirstName, "
                + "owners.LastName, owners.Address, owners.Phone, owners.DateBirth "
                + "FROM cars LEFT JOIN brands ON brands.id=cars.idBrand  "
                + "LEFT JOIN colors ON colors.id=cars.idColor "
                + "LEFT JOIN countries ON countries.id=cars.idContry "
                + "LEFT JOIN owners ON owners.id=cars.idOwer";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        while (resultSet.next()) {
            listCar.add(new Car(
                    resultSet.getInt("id"),
                    resultSet.getString("mark"),
                    resultSet.getString("Brand"),
                    resultSet.getString("Color"),
                    resultSet.getInt("YearMan"),
                    resultSet.getString("Country"),
                    new Owner(resultSet.getString("FirstName"),
                            resultSet.getString("LastName"),
                            resultSet.getString("Address"),
                            resultSet.getString("Phone"),
                            resultSet.getString("DateBirth")),
                    resultSet.getString("DateAdd")
            ));
        }
        return listCar;
    }

    //Получить список марок
    public ArrayList getBrands(Connection connection) throws ClassNotFoundException, SQLException {
        ArrayList<String> brands = new ArrayList<String>();
        String SQL = "SELECT brand FROM brands";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        while (resultSet.next()) {
            brands.add(resultSet.getString("Brand"));
        }
        return brands;
    }

    //Получить список цветов
    public ArrayList getColors(Connection connection) throws ClassNotFoundException, SQLException {
        ArrayList<String> colors = new ArrayList<String>();
        String SQL = "SELECT color FROM colors";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        while (resultSet.next()) {
            colors.add(resultSet.getString("Color"));
        }
        return colors;
    }

    //Получить список стран
    public ArrayList getContries(Connection connection) throws ClassNotFoundException, SQLException {
        ArrayList<String> countries = new ArrayList<String>();
        String SQL = "SELECT country FROM countries";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        while (resultSet.next()) {
            countries.add(resultSet.getString("Country"));
        }
        return countries;
    }

    //Получить количество столбцов
    public int getCountColumns(Connection connection) throws ClassNotFoundException, SQLException {
        String SQL = "SELECT * FROM cars";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        ResultSetMetaData rsmd = resultSet.getMetaData();
        int countCars = rsmd.getColumnCount();
        return countCars;
    }

    //Получить количество записей
    public int getCountRow(Connection connection) throws ClassNotFoundException, SQLException {
        String SQL = "SELECT count(*) FROM cars";
        PreparedStatement preparedStatementWA = connection.prepareStatement(SQL);
        ResultSet resultSet = preparedStatementWA.executeQuery();
        resultSet.next();
        int count = resultSet.getInt(1);
        return count;
    }

    //Получить дату добавления первой записи
    public Date getDateAddFirst(Connection connection) throws ClassNotFoundException, SQLException {
        Date dateFirst = null;
        String SQLSelectDate = "SELECT DateAdd FROM cars  ORDER BY id ASC LIMIT 1";
        PreparedStatement pSelectDate = connection.prepareStatement(SQLSelectDate);
        ResultSet resSelectDate = pSelectDate.executeQuery();
        while (resSelectDate.next()) {
            dateFirst = resSelectDate.getDate("DateAdd");
        }
        return dateFirst;
    }

    //Получить дату добавления последней записи
    public Date getDateAddLast(Connection connection) throws ClassNotFoundException, SQLException {
        Date dateLast = null;
        String SQLSelectDate = "SELECT DateAdd FROM cars  ORDER BY id DESC LIMIT 1";
        PreparedStatement pSelectDate = connection.prepareStatement(SQLSelectDate);
        ResultSet resSelectDate = pSelectDate.executeQuery();
        while (resSelectDate.next()) {
            dateLast = resSelectDate.getDate("DateAdd");
        }
        return dateLast;
    }
}

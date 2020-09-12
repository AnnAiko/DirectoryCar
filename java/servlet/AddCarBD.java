package servlet;

import pojo.Car;
import bd.ConnectionBD;
import bd.SetInfoBD;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "add", urlPatterns = {"/add"})
public class AddCarBD extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        //Получаем значение
        String jsonString = "";
        String line = null;
        BufferedReader reader = request.getReader();
        while ((line = reader.readLine()) != null) {
            jsonString += line;
        }
        ObjectMapper mapper = new ObjectMapper();
        Car cars = mapper.readValue(jsonString, Car.class);
        //Вернуть 
        //PrintWriter out = response.getWriter();
        //out.println(cars);
        ConnectionBD con = new ConnectionBD();
        Connection connection = con.connect();
        SetInfoBD setInfo = new SetInfoBD();
        try {
            int error = setInfo.setCar(connection, cars);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

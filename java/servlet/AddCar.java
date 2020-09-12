package servlet;

import bd.ConnectionBD;
import bd.GetInfoBD;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCar")
public class AddCar extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<String> brands = new ArrayList<String>();
        ArrayList<String> colors = new ArrayList<String>();
        ArrayList<String> countries = new ArrayList<String>();
        ConnectionBD con = new ConnectionBD();
        Connection connection = con.connect();
        GetInfoBD getInfo = new GetInfoBD();
        try {
            brands = getInfo.getBrands(connection);
            colors = getInfo.getColors(connection);
            countries = getInfo.getContries(connection);

            request.setAttribute("brand", brands);
            request.setAttribute("color", colors);
            request.setAttribute("country", countries);
            getServletContext().getRequestDispatcher("/addCars.jsp").forward(request, response);
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

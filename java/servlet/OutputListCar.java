package servlet;

import pojo.Car;
import bd.ConnectionBD;
import bd.GetInfoBD;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import pojo.Owner;

@WebServlet("/outputList")
public class OutputListCar extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Car> listCar = new ArrayList<Car>();
        ConnectionBD con = new ConnectionBD();
        Connection connection = con.connect();
        GetInfoBD getInfo = new GetInfoBD();
        try {
            listCar = getInfo.getListCars(connection);
            String sort = request.getParameter("sort");
            switch (sort) {
                case ("number"):
                    Collections.sort(listCar, Car.numberSort);
                    break;
                case ("brand"):
                    Collections.sort(listCar, Car.brandSort);
                    break;
                case ("year"):
                    Collections.sort(listCar, Car.yearSort);
                    break;
                case ("firstName"):
                    Collections.sort(listCar, Car.nameSort);
                    break;
            }
            request.setAttribute("car", listCar);
            getServletContext().getRequestDispatcher("/outListCar.jsp").forward(request, response);
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

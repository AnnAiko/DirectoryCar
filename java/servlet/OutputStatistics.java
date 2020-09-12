package servlet;

import bd.ConnectionBD;
import bd.GetInfoBD;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/statisticsBD")
public class OutputStatistics extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        ConnectionBD con = new ConnectionBD();
        Connection connection = con.connect();
        GetInfoBD getInfo = new GetInfoBD();
        try {
            int countColumns = getInfo.getCountColumns(connection);
            int countRows = getInfo.getCountRow(connection);
            Date dateFirst = getInfo.getDateAddFirst(connection);
            Date dateLast = getInfo.getDateAddLast(connection);
            request.setAttribute("countСolumn", countColumns);
            request.setAttribute("countRow", countRows);
            request.setAttribute("dateFirst", dateFirst);
            request.setAttribute("dateLast", dateLast);
            getServletContext().getRequestDispatcher("/statistics.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}

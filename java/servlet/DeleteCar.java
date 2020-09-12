package servlet;

import bd.ConnectionBD;
import bd.DeleteInfoBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteCar")
public class DeleteCar extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        ConnectionBD con = new ConnectionBD();
        Connection connection = con.connect();
        DeleteInfoBD delInfo = new DeleteInfoBD();
        try {
            int id = Integer.parseInt(request.getParameter("delete"));
            int error = delInfo.delCar(connection, id);
            response.setContentType("text/html");
            PrintWriter writer = response.getWriter();
            writer.println("<style type='text/css'> A {text - decoration: none;}<  / style >");
            if (error == 1) {
                writer.println("<center><h3>Удалена запись с id=" + id + "</h3> </center>");
            } else {
                writer.println("<center><h3>Запись не была удална (ошибка или запись с " + id + " не найдена)</h3> </center>");
            }
            writer.println("<a href='/testTask/'>&larr; </a>");
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

package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteInfoBD {

    public int delCar(Connection connection, int id) throws ClassNotFoundException, SQLException {
        String SQL = "DELETE FROM cars WHERE id =? ";
        PreparedStatement preparedStatement = connection.prepareStatement(SQL);
        preparedStatement.setInt(1, id);
        int error = preparedStatement.executeUpdate();
        return error;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Orders;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class OrdersDAO extends DBContext {

    public int create(Orders order) {
        int id = -1;
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([orderDate]\n"
                    + "           ,[totalPrices]\n"
                    + "           ,[customerID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setObject(1, order.getOrderDate());
            stm.setObject(2, order.getTotalPrices());
            stm.setObject(3, order.getCustomerID());

            stm.executeUpdate();
            ResultSet resultSet = stm.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {

        }
        return id;
    }
}

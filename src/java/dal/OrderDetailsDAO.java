/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.OrderDetails;

/**
 *
 * @author ADMIN
 */
public class OrderDetailsDAO extends DBContext {

    public void create(OrderDetails orderDetails) {
        int id = -1;
        try {
            String sql = "INSERT INTO [dbo].[OrderDetails]\n"
                    + "           ([orderID]\n"
                    + "           ,[pID]\n"
                    + "           ,[quantityOrder]\n"
                    + "           ,[price])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setObject(1, orderDetails.getOrderID());
            stm.setObject(2, orderDetails.getpID());
            stm.setObject(3, orderDetails.getQuantityOrder());
            stm.setObject(4, orderDetails.getPrice());
            stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {

        }
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Customer;

/**
 *
 * @author ADMIN
 */
public class CustomerDAO extends DBContext {

    public ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> customers = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Customer]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Customer c = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                customers.add(c);
            }
        } catch (SQLException ex) {

        }
        return customers;
    }

    public Customer getCustomerById(int id) {
        try {
            String sql = "SELECT * FROM [Customer] where [customerID] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Customer c = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                return c;
            }
        } catch (SQLException ex) {

        }
        return null;
    }

    public void update(String name, String email, String phoneNumber, String address, String id) {
        try {
            String sql = "UPDATE [dbo].[Customer]\n"
                    + "   SET [fullName] = ?,\n"
                    + "      [email] = ?,\n"
                    + "      [phoneNumber] = ?,\n"
                    + "      [address] = ?\n"
                    + " WHERE CustomerID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, email);
            stm.setString(3, phoneNumber);
            stm.setString(4, address);
            stm.setString(5, id);
            stm.executeUpdate();

        } catch (SQLException ex) {

        }
    }

    public void insert(String name, String email, String phoneNumber, String address) {
        try {
            String sql = "INSERT INTO [dbo].[Customer]\n"
                    + "           ([fullName]\n"
                    + "           ,[email]\n"
                    + "           ,[phoneNumber]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, email);
            stm.setString(3, phoneNumber);
            stm.setString(4, address);
            stm.executeUpdate();
        } catch (SQLException ex) {
           
        }
    }

}

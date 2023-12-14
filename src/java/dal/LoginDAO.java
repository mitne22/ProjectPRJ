/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class LoginDAO extends DBContext {

    public Account login(String user, String pass) {
        String sql = "SELECT * FROM Account WHERE uName = ? AND pass = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public Account checkExistAccount(String user) {
        String sql = "SELECT * FROM Account WHERE uName = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void signUp(String user, String pass) {
        try {
            String sql = "INSERT INTO Account VALUES (?,?,0,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public int getUIDByUsername(String user) {
        String sql = "SELECT uID FROM Account WHERE uName = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return -1;
    }

    public void update(String pass, String user) {
        try {
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET [pass] = ?\n"
                    + " WHERE uName = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setString(2, user);
            stm.executeUpdate();
        } catch (SQLException e) {

        }
    }

}
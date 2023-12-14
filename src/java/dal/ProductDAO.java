/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import model.Product;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends DBContext {

    private Object Logger;

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Product]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                products.add(p);
            }
        } catch (SQLException ex) {

        }
        return products;
    }

    public ArrayList<Product> get3Product() {
        ArrayList<Product> protop3 = new ArrayList<>();
        try {
            String sql = "SELECT TOP 3 *\n"
                    + "FROM Product\n"
                    + "ORDER BY pID DESC;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p3 = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                protop3.add(p3);
            }
        } catch (SQLException ex) {

        }
        return protop3;
    }

    public ArrayList<Product> getProductByCID(String cID) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Product] WHERE cID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, cID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                products.add(p);
            }
        } catch (SQLException ex) {

        }
        return products;
    }

    public ArrayList<Product> searchBypName(String search) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Product] where pName like '%" + search + "%'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                products.add(p);
            }
        } catch (SQLException ex) {

        }
        return products;
    }

    public void delete(String id) {
        try {
            String sql = "DELETE FROM Product WHERE pID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {

        }
    }

    public void create(String name, String price, String image, String title, String description, String category, String quantity) {
        try {
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([pName]\n"
                    + "           ,[price]\n"
                    + "           ,[image]\n"
                    + "           ,[title]\n"
                    + "           ,[description]\n"
                    + "           ,[cID]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, price);
            stm.setString(3, image);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, category);
            stm.setString(7, quantity);
            stm.executeUpdate();

        } catch (SQLException ex) {

        }
    }

    public void update(String name, String price, String image, String title, String description, String category, String quantity, String pID) {
        try {
            String sql = "UPDATE [dbo].[Product]\n"
                    + "   SET [pName] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[title] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[cID] = ?\n"
                    + "      ,[quantity] = ?\n"
                    + " WHERE pID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, price);
            stm.setString(3, image);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, category);
            stm.setString(7, quantity);
            stm.setString(8, pID);
            stm.executeUpdate();

        } catch (SQLException ex) {

        }
    }

    public Product getProductById(String id) {
        try {
            String sql = "SELECT * FROM [Product] where [pID] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                return p;
            }
        } catch (SQLException ex) {

        }
        return null;
    }

    public ArrayList<Product> sortHightoLow() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product ORDER BY price DESC";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                products.add(p);
            }
        } catch (SQLException ex) {

        }
        return products;
    }

    public ArrayList<Product> sortLowtoHigh() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product ORDER BY price ASC";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                products.add(p);
            }
        } catch (SQLException ex) {

        }
        return products;
    }

    public ArrayList<Product> getListByPage(ArrayList<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public ArrayList<Product> getNext3Product(int amount) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Product ORDER BY pID DESC OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY;";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, amount);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product n3 = new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8));
                list.add(n3);
            }
        } catch (SQLException ex) {

        }
        return list;
    }
    
    public void updateQuantity(Product product) {
        try {
            String sql = "UPDATE [dbo].[Product]\n"
                    + "   SET [quantity] = ?\n"
                    + " WHERE pID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setObject(1, product.getQuantity());
            stm.setObject(2, product.getpID());
            stm.executeUpdate();

        } catch (SQLException ex) {

        }
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        ArrayList<Product> list = dao.getNext3Product(3);
        for (Product product : list) {
            System.out.println(product);
        }
    }
}
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;

/**
 *
 * @author ADMIN
 */
public class CategoryDAO extends DBContext{
    public ArrayList<Category> getAllCategory(){
        ArrayList<Category> categories = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Category]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                categories.add(c);
            }
        } catch (SQLException ex) {

        }
        return categories;
    }

    public int getCategoryByName(String name) {
        int categoryID = 0;
        try {
            String sql = "SELECT cID FROM [Category] where [cName] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                categoryID = rs.getInt("cID");
            }
        } catch (SQLException ex) {

        }
        return categoryID;
    }
    
//    public Category getCategoryByID(String cID) {
//        try {
//            String sql = "SELECT * FROM [Product] WHERE cID = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, cID);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Category c = new Category(rs.getInt(1), rs.getString(2));
//                return c;
//            }
//        } catch (SQLException ex) {
//
//        }
//        return null;
//    }

    public static void main(String[] args){
        CategoryDAO cdao = new CategoryDAO();
        
        ArrayList<Category> listC = cdao.getAllCategory();
        for (Category c : listC) {
            System.out.println(c);
        }
    }
}

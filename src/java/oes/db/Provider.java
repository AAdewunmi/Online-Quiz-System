/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package oes.db;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author adrianadewunmi
 */
public class Provider {
    
    public static Connection getOracleConnection(){
        Connection con;
        con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineQuizDB", "root", "abc");
                System.out.println("Connection Successful, Yippe!!!");
            } catch (SQLException ex) {
                System.err.println("ERROR -> SQLException");
                Logger.getLogger(Provider.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            System.err.println("ERROR -> ClassNotFoundException");
            Logger.getLogger(Provider.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    
}

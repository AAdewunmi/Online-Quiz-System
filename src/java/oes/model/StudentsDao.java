/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package oes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import oes.db.Provider;
import oes.db.Students;

/**
 *
 * @author adrianadewunmi
 */
public class StudentsDao {
    
    public static boolean doValidate(Students sd){
        boolean status = false;
        try{
            
            Connection con = Provider.getOracleConnection();
            String sql = "select * from studenttable where userid=? and password=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, sd.getUsername());
            pst.setString(2, sd.getPassword());
            ResultSet rs = pst.executeQuery();
            
                if(rs.next()){
                    sd.setName(rs.getString("name"));
                    status = true;
                }else{
                    status = false;
                    System.out.println("ERROR! -> Connection status = false");
                }
            
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
    public static boolean insertStudent(Students st){
        
        boolean status = false;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "insert into studenttable values(?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, st.getUsername());
            pst.setString(2, st.getPassword());
            pst.setString(3, st.getName());
            // int val = pst.executeQuery(); Original Codebase
            int val = pst.executeUpdate();
            if(val > 0){
                status = true;
            }else{
                status = false;
                System.out.println("ERROR! -> Connection status = false");
            }
            
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
}

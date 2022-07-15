/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package oes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import oes.db.Instructions;
import oes.db.Provider;

/**
 *
 * @author adrianadewunmi
 */
public class InstructionsDao {
    
    public static boolean insertInstruction(Instructions ist){
        
        boolean status = false;
        
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "insert into instructiontable values(?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, ist.getInstruction());
            
            int val = pst.executeUpdate();
            if(val > 0){
                status = true;
            }else{
                status = false;
                System.out.println("ERROR! -> Connection status = false");
            }
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException(1)");
            System.out.println(e);
        }
        return status;
    }
    
    public static ArrayList<Instructions> getAllRecords(){
        
        ArrayList<Instructions> samp = new ArrayList<>();
        try{
            samp.clear();
            Connection con = Provider.getOracleConnection();
            String sql = "select * from instructiontable";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery(sql);
            while(rs.next()){
                Instructions i = new Instructions();
                i.setInstruction(rs.getString(1));
                samp.add(i);
            }
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException(2)");
            System.out.println(e);
        }
        return samp;
    }
    
    public static int deleteRecord(Instructions ist){
        
        int val = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "delete from instructiontable where instruction=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, ist.getInstruction());
            val = pst.executeUpdate();
        }catch(SQLException e){
            val = -1;
            System.out.println(e);
            System.out.println("ERROR! -> SQLException(3)");
        }
        return val;
    }
    
    public static int doUpdateNowRecord(String instaoriginal,String instamodified){
        
        int status = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "update instructiontable set instruction=? where instruction=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, instamodified);
            pst.setString(1, instaoriginal);
            int val = pst.executeUpdate();
            if(val > 0){
                status = 1;
            }else{
                status = -1;
            }
        }catch(SQLException e){
            status = 2;
            System.out.println("ERROR! -> SQLException(4)");
            System.out.println(e);
        }
        return status;
    }
    
}

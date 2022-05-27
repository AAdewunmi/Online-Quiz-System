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
    
    public static ArrayList<Students> getAllRecords(){
        
        ArrayList<Students> samp = new ArrayList<>();
        try{
            samp.clear();
            Connection con = Provider.getOracleConnection();
            String sql = "select * from studenttable";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                Students s = new Students();
                s.setName(rs.getString(1));
                s.setPassword(rs.getString(2));
                s.setName(rs.getString(3));
                samp.add(s);
                
            }
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return samp;
    }
    
    public static int deleteRecord(Students st){
        
        int status = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "delete from  studenttable where userid=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, st.getUsername());
            int val = pst.executeUpdate();
            if(val > 0){
                status = 1;
                System.out.println("Update Successful!");
            }else{
                status = 0;
                System.out.println("Update Unsuccessful!");
            }
            
        }catch(SQLException e){
           System.out.println("ERROR! -> SQLException");
           System.out.println(e);
        }
        return status;
    }
    
    public static String getStudentName(String username){
        String name = null;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "select name from studenttable where userid=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                name = rs.getString(1);
            }else{
                name = "DB-ERROR!";
                System.out.println("Get Student Name Query Unsuccessful!");
            }
        }catch(SQLException e){
           name = e.getMessage();
           System.out.println("ERROR! -> SQLException");
           System.out.println(e);
        }
        return name;
    }
    
    public static int doUpdateNowRecord(String originalusername,String newuserid,String newpassword,String newname){
        
        int status = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "update studenttable set userid=?,password=?,name=? where userid=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, newuserid);
            pst.setString(2, newpassword);
            pst.setString(3, newname);
            pst.setString(4, originalusername);
            
            int val = pst.executeUpdate();
            
            if(val > 0){
                status = 1;
                System.out.println("Update Successful!");
            }else{
                status = -1;
                System.out.println("Update Unsuccessful!");
            }
        }catch(SQLException e){
            status = 2;
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
}

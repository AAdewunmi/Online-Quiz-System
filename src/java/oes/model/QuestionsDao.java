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
import oes.db.Questions;

/**
 *
 * @author adrianadewunmi
 */
public class QuestionsDao {
    
    public static boolean insertQuestion(Questions q){
        boolean status = false;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "insert into questiontable values(?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, q.getQuestion().trim());
            pst.setString(2, q.getA());
            pst.setString(3, q.getB());
            pst.setString(4, q.getC());
            pst.setString(5, q.getD());
            pst.setString(6, q.getAnswer());
            
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
    
    public static ArrayList<Questions> getAllRecords(){
    
        ArrayList<Questions> samp = new ArrayList<>();
        try{
            
            samp.clear();
            Connection con = Provider.getOracleConnection();
            String sql = "select * from questiontable";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery(sql);
            while(rs.next()){
                Questions s = new Questions();
                s.setQuestion(rs.getString(1));
                s.setAnswer(rs.getString(6));
                s.setA(rs.getString(2));
                s.setB(rs.getString(3));
                s.setC(rs.getString(4));
                s.setD(rs.getString(5));
                samp.add(s);

            }
            
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return samp;
    }
    
    public static int deleteRecord(Questions q){
        int status = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "delete from questiontable where question=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, q.getQuestion());
            int val = pst.executeUpdate();
            if(val > 0){
                status = 1;
            }else{
                status = 0;
            }
        }catch(SQLException e){
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
    public static int doUpdateNowRecord(String OriginalQuestion,String newQuestion,String opta,String optb,String optc,String optd,String ans){
        
        int status = 0;
        try{
            Connection con = Provider.getOracleConnection();
            String sql = "update questiontable set question=?,a=?,b=?,c=?,d=?,answer=? where question=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, newQuestion);
            pst.setString(2, opta);
            pst.setString(3, optb);
            pst.setString(4, optc);
            pst.setString(5, optd);
            pst.setString(6, ans);
            pst.setString(7, OriginalQuestion);
            
            int val = pst.executeUpdate();
            if(val > 0){
                status = 1;
            }else{
                status = -1;
            }
        }catch(SQLException e){
            status = 2;
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
}

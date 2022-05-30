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
    
}

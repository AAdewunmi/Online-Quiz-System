/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package oes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
            System.out.println("ERROR! -> SQLException");
            System.out.println(e);
        }
        return status;
    }
    
}

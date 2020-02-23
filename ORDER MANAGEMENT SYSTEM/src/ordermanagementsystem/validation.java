/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ordermanagementsystem;

import java.awt.Component;
import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author N.M.C.H
 */
public class validation {
    private static Component rootPane;
    /*
        Password Validation
        Name Validation
        Phone number Validation
        Email Validation
        Birthday Validation should implement
    */

    public static boolean isValidPassword(String password) {
        /*
        return true if and only if password:
        1. have at least eight characters.
        2. consists of only letters and digits.
        3. must contain at least two digits.
         */
        if (password.length() < 8) {
            return false;
        } else {
            char c;
            int count = 1;
            for (int i = 0; i < password.length(); i++) {
                c = password.charAt(i);
                if (!Character.isLetterOrDigit(c)) {
                    return false;
                } else if (Character.isDigit(c)) {
                    count++;
                    if (count < 2) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
    public static boolean isValidID(String id){
       char c;
       if(id.charAt(9)== 'V' || id.charAt(9)== 'V'){
       for(int i = 0; i<9; i++){
          c = id.charAt(i);
          if (Character.isDigit(c)) {               
                    return true;
       }
          else{
              JOptionPane.showMessageDialog(rootPane,"Enter A Valid Id number");
              return false;
          }}
          
        
       }
       JOptionPane.showMessageDialog(rootPane,"Enter A Valid Id number");
        return false; 
    
    }

    public static boolean isValidName(String name) {
        /*
        Validate Name
        */
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane,"Enter Charactors Only Name Field");
                return false;
                
            }
        }
        return true;
    }

    public static boolean isValidPhoneNumber(String phoneNumber) {
        /*
        Validate Phone number
        */
        if (!(phoneNumber.length() == 10)) {
            JOptionPane.showMessageDialog(rootPane,"Enter 10 Digits Only For Phone Number");
            return false;
        } else {
            char c;
            for (int i = 0; i < phoneNumber.length(); i++) {
                c = phoneNumber.charAt(i);
                if (!Character.isDigit(c)) {
                    JOptionPane.showMessageDialog(rootPane,"Enter Digits Only For Phone Number");
                    return false;
                }
            }
        }
        return true;
    }
    public static boolean isValidEmail(String email){
        /*
        Validate Email
        */
           String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
           java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
           java.util.regex.Matcher m = p.matcher(email);
           if(m.find() && m.group().equals(email)){
            return true;
           }else{
                JOptionPane.showMessageDialog(rootPane,"Email Is Invalid!");
               return false;
           }
           
           
    }
    public static boolean isValidBirthday(String day, String month, String year){
        // Must implement 
        return true;
    }

    String isValidation(String text) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

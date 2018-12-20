/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;
import java.util.Random;

public class add_del {
    
private static final String List="12345678910";
private static final int List_len=8;
Connection conn;
String fid[]= new String[100];
String nm[]= new String[100];
String size[]= new String[100];
String qty[]= new String[100];
String pr[]= new String[100];
int i=0;

public void connect() throws Exception {
           Class c= Class.forName("com.mysql.jdbc.Driver") ;
           conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizza_delivery", "root", "");
          // System.out.println("connected..");
     }


 public String generateRandomString() {
        StringBuffer randstr= new StringBuffer();
        Random rnd = new Random();
        for(int i=0;i<List_len;i++) {
           int n= rnd.nextInt(10);
           char ch= List.charAt(n);
           randstr.append(ch);
        }
           return randstr.toString();
 }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Registration1 {
	  Connection conn;
	  public Registration1 () { }
	  public void connect() throws Exception{
		  Class c = Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizza_delivery", "root", "");
		  
	  }
	  public boolean insert(String fn,String ln,String dob,String gn,String st,String lc,String cty,String state,String pin,String m_no,String e_id,String pw) throws SQLException {
			Statement stmnt = conn.createStatement();
			int rowcount = stmnt
					.executeUpdate("insert into test3 values ('" + fn
							+ "', '" + ln+ "' ,'" + dob
							+ "','" + gn+ "', '" + lc+ "' ,'" + st
							+ "', '" + cty+ "' ,'" + state
							+ "', '" + pin+ "','" + m_no
							+ "', '" + e_id+ "', '" + pw+ "'   )");
			return true;
		}

}
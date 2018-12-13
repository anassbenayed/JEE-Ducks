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

public class Login {
	Connection conn;

    public void connect() throws ClassNotFoundException, SQLException {

            Class c = Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizza_delivery", "root", "");
    }

    public String login(String e_id, String pw) throws Exception {
            PreparedStatement ps = conn.prepareStatement("select *from user_details where e_id=? and pw=?");
            ps.setString(1, e_id);
            ps.setString(2, pw);
            ResultSet rs = ps.executeQuery();
            if (rs.next())
                return "user";
            else 
            {
                return "nope";
            }
    }

    public boolean insert(int id, String fn, String ln, String dob, String gn, String st, String lc, String cty,
                    String state, String pin, String m_no, String e_id, String pw) throws SQLException {
            Statement stmnt = conn.createStatement();
            int rowcount = stmnt.executeUpdate("insert into user_details values ('" + id + "','" + fn + "', '" + ln
                            + "' ,'" + dob + "','" + gn + "', '" + lc + "' ,'" + st + "', '" + cty + "' ,'" + state + "', '" + pin
                            + "','" + m_no + "', '" + e_id + "', '" + pw + "'   )");
            return true;
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class registerdata {
    
        public static int addstudent(register s) throws SQLException {
        Connection con = Databaseconnection.getConnection();
        Statement st = con.createStatement();
        String q = "insert into registration(first_name,last_name,father_name,mobile_no,district,pincode,gmail,password,conform_password,state,date) values('" + s.getFirst_name() + "','" + s.getLast_name() + "','" + s.getFather_name() + "'," + s.getMobile_no() + ",'" + s.getDistrict() + "'," + s.getPincode() + ",'" + s.getGmail() + "','" + s.getPassword() + "','" + s.getConform_password() + "','" + s.getState() + "'," + s.getDate() + ")";
        return st.executeUpdate(q);
        }
         public static int missingadd(missing m) throws SQLException {
        Connection con = Databaseconnection.getConnection();
        Statement st = con.createStatement();
        String q = "insert into missing_form_details(first_name,last_name,father_name,birth,city,mobile_no,gender,missing_from,missing_date,height,marks,face,hair,health) values('" + m.getFirst_name() + "','" + m.getLast_name() + "','" + m.getFather_name() + "'," + m.getBirth() + ",'" + m.getCity() + "'," + m.getMobile_no() + ",'" + m.getGender  () + "','" + m.getMissing_form() + "'," + m.getMissing_date() + "," + m.getHeight() + ",'" + m.getMarks() + "','" + m.getFace() + "','" + m.getHair() + "','" + m.getHealth() + "')";
        return st.executeUpdate(q);
    }
         public static ArrayList<missing> getStudentList() throws SQLException {
        Connection con = Databaseconnection.getConnection();
        Statement st = con.createStatement();
        String q = "select * from missing_form_details";
        ResultSet rs = st.executeQuery(q);
        ArrayList<missing> list = new ArrayList<missing>();
        while (rs.next()) {
            missing m;
            m = new missing(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getInt(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14));
            list.add(m);
        }
        return list;
    }   
   
}

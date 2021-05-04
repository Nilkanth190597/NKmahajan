/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databaseconnection {

    private static Connection con;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject?zeroDateTimeBehavior=convertToNull", "root", "");
        } catch (ClassNotFoundException classNotFoundException) {
        } catch (SQLException sQLException) {
        }
    }

    public static Connection getConnection() throws SQLException {
        if (con==null || con.isClosed()) {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject?zeroDateTimeBehavior=convertToNull", "root", "");
        }
        return con;
    }
}

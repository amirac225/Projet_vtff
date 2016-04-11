/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author belkotam
 */
public class main  {
    

    public static void main(String[] args) throws SQLException {
        Connection connection;
        ArrayList<String> params = new ArrayList<String>();
        try {
            /**
             * **Connexion à la BD**
             */

            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            String url
                    = "jdbc:oracle:thin:@ensioracle1.imag.fr:" + "1521:ensioracle1";
            String user = "belkotam";
            String passwd = "belkotam";
            connection = DriverManager.getConnection(url, user, passwd);
            connection.setAutoCommit(false);
            new Accueil(connection).setVisible(true);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

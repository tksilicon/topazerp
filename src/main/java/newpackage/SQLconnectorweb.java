/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.*;
import java.sql.DriverManager;
import java.lang.NullPointerException;

/**
 *
 * @author Deji
 */
public class SQLconnectorweb {

    private Connection connect = null;

    public SQLconnectorweb() throws java.lang.ClassNotFoundException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/easywashweb", "root", "");
            
            //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/echelonaccounting", "root", "admin");
           
            //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic","odicerpc_odicapp","pink2014");
            //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odicerpc_odic","odicerpc_odicerpc_odicapp","pink2014");

            //connect = DriverManager.getConnection("jdbc:mysql://xjdz3.dailyrazor.com:3306/odicerpc_odic?user=odicerpc_odicapp&password=pink2014");
             //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic?user=odicerpc_odicapp&password=pink2014");
            
            //connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/jrbnixfn_easywashsql", "jrbnixfn_easwash", "Echelon2013%");
             connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/odicerpc_odic", "root", "");


        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public Connection getCon() throws java.lang.NullPointerException {

        return connect;
    }
}
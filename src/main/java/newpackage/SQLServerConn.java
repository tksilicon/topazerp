/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class SQLServerConn {

    private String Constring;
    private Connection connect = null;

    public SQLServerConn() {
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=EasyWash.mdb;";
            connect = DriverManager.getConnection(database, "Admin", "echelon1234567");
        }
        catch(Exception e){

        }

    }

    public Connection getCon() throws ClassNotFoundException{
        return connect;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public abstract class DBConnection<T> {
    protected  Connection connection;
    public DBConnection(){
        try {
            String user ="sa";
            String pass ="120324";
            String url ="jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=PRJ301;encrypt=true;trustServerCertificate=true";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url,user,pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public abstract void insert(T model);
    public abstract void update(T model);
    public abstract void delete(T model);
    public abstract T get(int id);
    public abstract ArrayList<T> list();
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Model.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Stiven
 */
public class Conexion {
    
    private PreparedStatement insert;
    private Statement statement;
    private Connection conexion;
    private ResultSet read;
    
    public Conexion() 
        {
        try
            {
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection("jdbc:mysql://localhost/paginaKonrad?user=root&password=Cc1018499056");
            statement=conexion.createStatement();
            }catch(ClassNotFoundException e)
                {
                    System.out.println("paila la conexion");
                }
            catch(SQLException sql)
                {
                    System.out.println("paila la conexion 2");
                }
        }
    
    public void setUser(User user)
        {
        try
            {
            insert=conexion.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
            insert.setString(1, user.getEmail());
            insert.setString(2, user.getName());
            insert.setString(3, user.getLastName());
            insert.setString(4, user.getDocument());
            insert.setLong(5, user.getTelephone());
            insert.setString(6, user.getPass());
            insert.setInt(7, 1);
            insert.executeUpdate();
            insert.close();
                System.out.println("listo socio");
            }catch(SQLException ex)
            {  System.out.println("paila perro con el inser user"); }
        }
     public void setExositor(expositor exp)
        {
        try
            {
            insert=conexion.prepareStatement("insert into expositor values(?,?,?,?,?)");
            insert.setString(1, exp.getDoc());
            insert.setString(2, exp.getName());
            insert.setString(3, exp.getLastName());
            insert.setString(4, exp.getProfesion());
            insert.setString(5, exp.getDescripton());
            insert.setString(6, exp.getInves());
            insert.executeUpdate();
            insert.close();
                System.out.println("listo socio");
            }catch(SQLException ex)
            {  System.out.println("paila perro con el inser user"); }
        }
    public static void main(String[] args) {
        User s=new User("stiven", "perdomo", "12345", "stiven@gmail.com", 12345, "1018499056");
    Conexion c=new Conexion();
    c.setUser(s);
    }
}

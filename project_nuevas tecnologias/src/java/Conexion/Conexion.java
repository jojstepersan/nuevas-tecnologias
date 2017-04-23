/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import Model.Conference;
import Model.Expositor;
import Model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
     public void setExpositor(Expositor exp)
        {
        try
            {
            insert=conexion.prepareStatement("insert into expositor values(?,?,?,?,?,?)");
            insert.setString(1, exp.getDoc());
            insert.setString(2, exp.getName());
            insert.setString(3, exp.getLastName());
            insert.setString(4, exp.getProfesion());
            insert.setString(5, exp.getDescripton());
            insert.setString(6, exp.getInves());
            insert.executeUpdate();
            insert.close();
                System.out.println(exp.getProfesion());
                System.out.println(exp.getDescripton());
                System.out.println(exp.getInves());
            }catch(SQLException ex)
            {  System.out.println("paila perro con el insert expositor"); }
        }
    public ArrayList<Expositor> getExpositor()
        {
        ArrayList<Expositor> list=new ArrayList<>();
        try{
            read=statement.executeQuery("select * from expositor");
            while(read.next())
                {
                Expositor expositor=new Expositor(read.getString(2), read.getString(3), read.getString(1),read.getString(5), read.getString(4), read.getString(6));
                list.add(expositor);
                }
            read.close();
            System.out.println("listo los expo");
            }catch(SQLException ex)
                {
                System.out.println("no se pudo con la lista de los expositores");
                }
        return list;
        }
    
    public ArrayList<Conference> getConference()
        {
        ArrayList<Conference> list=new ArrayList<>();
        try{
            read=statement.executeQuery("select * from conference");
            while(read.next())
                {
                Conference conference=new Conference(); 
                conference.setId(read.getInt(1));
                conference.setTitle(read.getString(2));
                conference.setIntroduction(read.getString(3));
                conference.setParagraphs(read.getString(4));
                conference.setId(read.getInt(5));
                conference.setImage(read.getString(6));
                list.add(conference);
                }
            read.close();
            }catch(SQLException ex)
                {
                System.out.println("no se pudo con la lista de los expositores");
                }
        return list;
        }
    
    public void setConference(Conference conference)
        {
        try
            {
            insert=conexion.prepareStatement("insert into conference(name_conference,introduction_conference,description_conference,share_conference,image,doc_expositor) values(?,?,?,?,?,?)");
            insert.setString(1, conference.getTitle());
            insert.setString(2, conference.getIntroduction());
            insert.setString(3, conference.getParagraphs());
            insert.setInt(4, conference.getShare());
            insert.setString(5, conference.getImage());
            insert.setString(6, conference.getDocExpositer());
            insert.executeUpdate();
            insert.close();
            }catch(SQLException ex)
                {
                    System.out.println("paila con la inseercion de la conferencia");
                }
        }
    public static void main(String[] args) {
    }
}
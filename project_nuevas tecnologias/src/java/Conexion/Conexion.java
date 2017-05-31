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
            conexion=DriverManager.getConnection("jdbc:mysql://localhost/paginaKonrad?user=root&password=12345");
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
            insert=conexion.prepareStatement("insert into usuario values(?,?,?,?,?,?,?)");
            insert.setString(1, user.getEmail());
            insert.setString(2, user.getName());
            insert.setString(3, user.getLastName());
            insert.setString(4, user.getDocument());
            insert.setLong(5, user.getTelephone());
            insert.setString(6, user.getPass());
            insert.setInt(7, user.getType());
            insert.executeUpdate();
            insert.close();
                System.out.println("listo socio se registro el suario");
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
            insert.setString(5, exp.getBibliography());
            insert.setString(6, exp.getImage());
            insert.executeUpdate();
            insert.close();
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
            System.out.println("listo los expositores");
            }catch(SQLException ex)
                {
                System.out.println("no se pudo con la lista de los expositores");
                }
        return list;
        }
    
     public ArrayList<Integer> getClassroom()
        {
        ArrayList<Integer> classroom=new ArrayList<>();
        try{
            read=statement.executeQuery("select cod_classroom from classroom");
            while(read.next())
                {
                classroom.add(read.getInt(1));
                }
            read.close();
            }catch(SQLException ex)
                {
                System.out.println("no se pudo con la lista de los expositores");
                }
        return classroom;
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
                ArrayList<String> parrafos=new ArrayList<>();
                conference.setClassroom(read.getInt(3));
                parrafos.add(read.getString(4));
                parrafos.add(read.getString(5));
                parrafos.add(read.getString(6));
                parrafos.add(read.getString(7));
                parrafos.add(read.getString(8));
                conference.setParagraphs(parrafos);
                conference.setImage(read.getString(9));
                conference.setFecha(read.getString(10));
                conference.setDocExpositer(read.getString(11));
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
            insert=conexion.prepareStatement("insert into conference(name_conference,classroom,parrafo_1,parrafo_2,parrafo_3,parrafo_4,parrafo_5,image,fecha,doc_expositor) values(?,?,?,?,?,?,?,?,?,?)");
            insert.setString(1, conference.getTitle());
            insert.setInt(2, conference.getClassroom());
            ArrayList<String> parrafos=conference.getParagraphs();
            insert.setString(3, parrafos.get(0));
            insert.setString(4, parrafos.get(1));
            insert.setString(5, parrafos.get(2));
            insert.setString(6, parrafos.get(3));
            insert.setString(7, parrafos.get(4));
            insert.setString(8, conference.getImage());
            insert.setString(9, conference.getFecha());
            insert.setString(10, conference.getDocExpositer());
            insert.executeUpdate();
            insert.close();
            System.out.println("listo el insert de la expo");
            }catch(SQLException ex)
                {
                System.out.println("paila con la insercion de la conferencia");
                }
        }
    
    public User getUser(String email, String pass ) {
        User Us=null;
        try {
            String sql="Select * FROM usuario WHERE email_user='"+email+"' && password_user='"+pass+"'";
            read=statement.executeQuery(/*"Select * from user where email_user=? && password_user=?"*/sql);
        while(read.next()){
            Us= new User(read.getString(2),read.getString(3),read.getString(6),read.getString(1),read.getLong(5),read.getString(4));
            Us.setType(read.getInt(7));
        }
            read.close();
        } catch (SQLException ex) {
            System.out.println("paila con la busqueda del man");}
        return Us;
    }
    
    public Conference getConference(int id)
        {
        Conference conference=new Conference();
        try {
            String sql="Select * FROM conference WHERE cod_conference="+id;
            read=statement.executeQuery(sql);
            while(read.next())
                {
                conference.setId(read.getInt(1));
                conference.setTitle(read.getString(2));
                conference.setClassroom(read.getInt(3));
                ArrayList<String> parrafos=new ArrayList<>();
                for (int i = 4; i <= 8; i++)
                    parrafos.add(read.getString(i));    
                conference.setParagraphs(parrafos);
                conference.setImage(read.getString(9));
                conference.setFecha(read.getString(10));
                conference.setDocExpositer(read.getString(11));
                }
            read.close();
        } catch (SQLException ex) {
            System.out.println("paila con la busqueda del man");}
        return conference;
        }
    public static void main(String[] args) {
        
        System.out.println("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus adipiscing commodo aliquet. Fusce bibendum orci magna, a ".length());
    }
}

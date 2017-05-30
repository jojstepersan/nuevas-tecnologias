
package Model;

import java.util.ArrayList;

/**
 *
 * @author Stiven
 */

public class Conference
    {
    private int id;
    private String title;
    private int classroom;
    private String fecha;
    private String docExpositer;
    private ArrayList<String> paragraphs;
    private String image;
    private ArrayList<User> listUsers;
    public String getFecha() {
        return fecha;
    }
    
    

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public ArrayList<String> getParagraphs() {
        return paragraphs;
    }

    public void setParagraphs(ArrayList<String> paragraphs) {
        this.paragraphs = paragraphs;
    }
    
    public String getDocExpositer() {
        return docExpositer;
    }

    public void setDocExpositer(String docExpositer) {
        this.docExpositer = docExpositer;
    }
  
    public Conference()
        {
        listUsers=new ArrayList<>();
        paragraphs=new ArrayList<>();
        }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getClassroom() {
        return classroom;
    }

    public int getAvailableShare() {
        return listUsers.size();
    }

    public void setClassroom(int share) {
        this.classroom = share;
    }

   

    public ArrayList<User> getListUsers() {
        return listUsers;
    }

    public void setListUsers(ArrayList<User> listUsers) {
        this.listUsers = listUsers;
    }
    
    
    }


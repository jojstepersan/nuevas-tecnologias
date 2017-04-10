/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
    private int availableShare;
    private int share;
    private Expositor lecture;
    private String docExpositer;

    public String getDocExpositer() {
        return docExpositer;
    }

    public void setDocExpositer(String docExpositer) {
        this.docExpositer = docExpositer;
    }
    private String  introduction;
    private String paragraphs;
    private String image;
    private ArrayList<User> listUsers;
    
    public Conference()
        {
        listUsers=new ArrayList<>();
        }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Expositor getLecture() {
        return lecture;
    }

    public void setLecture(Expositor lecture) {
        this.lecture = lecture;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
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

    public int getShare() {
        return share;
    }

    public int getAvailableShare() {
        return share-listUsers.size();
    }

    public void setShare(int share) {
        this.share = share;
    }

    public String getParagraphs() {
        return paragraphs;
    }

    public void setParagraphs(String paragraphs) {
        this.paragraphs = paragraphs;
    }

    public ArrayList<User> getListUsers() {
        return listUsers;
    }

    public void setListUsers(ArrayList<User> listUsers) {
        this.listUsers = listUsers;
    }
    
    
    }


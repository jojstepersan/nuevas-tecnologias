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
    
    private String title;
    private int availableShare;
    private int share;
    private ArrayList<String> paragraphs;
    private ArrayList<User> listUsers;
    
    public Conference()
        {
        paragraphs=new ArrayList<>();
        listUsers=new ArrayList<>();
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

    public ArrayList<String> getParagraphs() {
        return paragraphs;
    }

    public void setParagraphs(ArrayList<String> paragraphs) {
        this.paragraphs = paragraphs;
    }

    public ArrayList<User> getListUsers() {
        return listUsers;
    }

    public void setListUsers(ArrayList<User> listUsers) {
        this.listUsers = listUsers;
    }
    
    
    }


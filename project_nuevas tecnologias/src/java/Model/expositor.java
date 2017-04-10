/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

public class expositor {
    
    private String name;
    private String lastName;
    private String doc;
    private String descripton;
    private String profesion;
    private String inves;

    public expositor(String name, String lastName, String doc, String descripton, String profesion, String inves) {
        this.name = name;
        this.lastName = lastName;
        this.doc = doc;
        this.descripton = descripton;
        this.profesion = profesion;
        this.inves = inves;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDoc() {
        return doc;
    }

    public void setDoc(String doc) {
        this.doc = doc;
    }

    public String getDescripton() {
        return descripton;
    }

    public void setDescripton(String descripton) {
        this.descripton = descripton;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public String getInves() {
        return inves;
    }

    public void setInves(String inves) {
        this.inves = inves;
    }

//   
}
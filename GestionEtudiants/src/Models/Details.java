/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLGS
 */
public class Details {
    private String annee;
    private List<String> modules;
    private Classe cl;
    private Professeur professeur;

    public Details() {
    }

    public Details(String annee) {
        this.annee = annee;
    }

    public Details(String annee, List<String> modules, Classe cl, Professeur professeur) {
        this.annee = annee;
        this.modules = modules;
        this.cl = cl;
        this.professeur = professeur;
    }

    public String getAnnee() {
        return annee;
    }

    public void setAnnee(String annee) {
        this.annee = annee;
    }

    public List<String> getModules() {
        return modules;
    }

    public void setModules(List<String> modules) {
        this.modules = modules;
    }

    public Classe getCl() {
        return cl;
    }

    public void setCl(Classe cl) {
        this.cl = cl;
    }

    public Professeur getProfesseur() {
        return professeur;
    }

    public void setProfesseur(Professeur professeur) {
        this.professeur = professeur;
    }

    @Override
    public String toString() {
        return "Details{" + "annee=" + annee + '}';
    }
    
}

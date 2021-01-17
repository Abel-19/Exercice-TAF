/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Models.Classe;
import Models.Personne;
import Models.Professeur;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLGS
 */
public class DaoPersonne {
    private final String SQL_SELECT_BY_CLASSE="select * from personne where type='Etudiant' and classe_id=?";
    //A farire sur SQL
    private final String SQL_INSERT="INSERT INTO `personne` ( `nom_complet`, `type`, `tuteur`, `modules`, `grade`, `classe_id`) VALUES (?,?,?,?,?,?);";
     private final String SQL_SELECT_PROFESSEUR="select * from personne where matricule=?";
     
    public List<Personne> findByClasse(Classe classe){
        List<Personne> lEtudiants=new ArrayList<>();
        //Recuperation
        return lEtudiants;
    }
    
    public int insert(Personne pers){
    int nbreLigne=0;
            //Traitement Insertion
            return nbreLigne;
    }
    
    public Professeur findProfesseurByMatricule(String matricule){
        Professeur professeur=null;
        //Recherche
        return professeur;
    }
}

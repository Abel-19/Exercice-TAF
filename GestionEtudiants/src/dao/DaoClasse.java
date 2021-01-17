/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Models.Classe;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLGS
 */
public class DaoClasse {
    private final String SQL_INSERT="INSERT INTO `classe` (`libelle`, `nbre_etudiant`) VALUES ('?', '?')";
    private final String SQL_INSERT_ALL="Select * from classe";
    
    public int insert(Classe classe){
    int nbreLigne=0;
    //Insertion
    return nbreLigne;
    }
    public List<Classe> findAll(){
        List<Classe>lClasses=new ArrayList<>();
        //Rempli la list
        return lClasses;
    }
}

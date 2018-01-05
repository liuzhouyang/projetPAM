package com.pam.beans;

import javax.persistence.criteria.CriteriaBuilder;

public class Stocage {

    private Integer quantite;
    private Integer Produits_idProduits;

    public Stocage(){
        super();
    }

    public Stocage(Integer qua, Integer id){
        super();
        this.quantite = qua;
        this.Produits_idProduits = id;
    }

    public Integer getQuantite(){
        return quantite;
    }

    public Integer getProduits_idProduits(){
        return Produits_idProduits;
    }

    public void setQuantite(Integer quantite){
        this.quantite = quantite;
    }

    public void setProduits_idProduits(Integer id){
        this.Produits_idProduits = id;
    }

    @Override
    public String toString(){
        return "Stocage[quantite="+quantite+",Produits_idProduits="+Produits_idProduits+"]";
    }
}
